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
  default = "i-0b772a320cfd1d192"
}

variable "image_id" {
  default = "ami-0a3325a49ef75d363"
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
