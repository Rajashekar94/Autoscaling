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
  default = "i-0015834d2d7ef29f2"
}

variable "image_id" {
  default = "ami-0f495635f99dd20e2"
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
