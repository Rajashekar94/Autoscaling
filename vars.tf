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
  default = "i-0764be2de20cd2544"
}

variable "image_id" {
  default = "ami-0d872590456085ef0"
}

variable "max_size" {
  default = "4"
}

variable "min_size" {
  default = "2"
}

variable "desired_capacity" {
  default = "1"
}
