
variable "environment" {
  description = "instance environment"
}

variable "vpc_id" {
  description = "The VPC ID"
}

variable "cidr_block_priv" {
  description = "private access"
}

variable "owner" {
  description = "Instance Owner"
}

variable "aws_security_group_id" {
  description = "Security Group ID"
}

variable "email" {
  description = "email of owner for tags"

}
variable "namespace" {
}
