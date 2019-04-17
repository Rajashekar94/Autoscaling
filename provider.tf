provider "aws" {
  profile                 = "demo_user1"
  region                  = "ap-south-1"
  shared_credentials_file = "/home/raj/.aws/credentials"
}

resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name      = "terraform"

  tags {
    Name = "terraform-instance"
  }
}

resource "aws_security_group" "my-instance" {
  name = "terraform-example-instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_ami_from_instance" "backup" {
  name               = "terraform-backup"
  source_instance_id = "${var.source_instance_id}"
}

resource "aws_launch_configuration" "as_conf" {
  name            = "web_config"
  image_id        = "${var.image_id}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.my-instance.id}"]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "bar" {
  name                 = "terraform-asg-example"
  launch_configuration = "${aws_launch_configuration.as_conf.name}"
  availability_zones   = ["ap-south-1a"]
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
  
  load_balancers       = ["${aws_elb.example.name}"]
  health_check_type    = "ELB"

  tag {
    key                 = "Name"
    value               = "terraform-asg-example"
    propagate_at_launch = true
  }
}

####### Security Group for ELB [elastic load balancer]

### Creating ELB
resource "aws_elb" "example" {
  name               = "terraform-asg-example"
  availability_zones = ["ap-south-1a"]

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 30
    target              = "HTTP:8080/"
  }

  listener {
    lb_port           = 80
    lb_protocol       = "http"
    instance_port     = "8080"
    instance_protocol = "http"
  }
}
