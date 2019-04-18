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
  default = "i-0e659102cbc82acfe"
}

variable "image_id" {
  default = "ami-08ed39e36833f4bc4"
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
