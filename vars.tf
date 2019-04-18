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
  default = "ami-0a44c8317f50c0c8f"
}

variable "max_size" {
  default = "1"
}

variable "min_size" {
  default = "1"
}

variable "desired_size" {
  default = "1"
}
