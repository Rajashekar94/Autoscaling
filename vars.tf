variable "ami" {
  type = "map"

  default = {
    "ap-south-1" = "ami-007d5db58754fa284"
  }
}

variable "instance_count" {
  default = "1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "source_instance_id" {
  default = "i-02c0a3c65d61f894d"
}

variable "image_id" {
  default = "ami-04c9d2d68605c3ad5"
}

variable "max_size" {

  default = "3"
}

variable "min_size" {
  default = "2"
}
variable "desired_size" {
  default = "1"
}

