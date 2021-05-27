
variable "namespace" {
  description = "Service Naming"
}

//variable "vpc_id" {
//  description = "The VPC ID"
//}

variable "availability_zone" {
  description = "The VPC ID"
}

variable "cidr_block" {
  description = "subnet block"
}

variable "owner" {
  description = "Instance Owner"
}
variable "email" {
  description = "email of owner for tags"
}

variable "aws_security_group_id" {
  default = ""
}

variable "aws_instance_id" {
  default = ""
}