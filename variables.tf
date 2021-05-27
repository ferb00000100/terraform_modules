variable "service" {
  description = "name of service"
}

variable "region" {
  default = ""
  description = "region"
}

variable "dynamodb_table" {
  description = "dynamodb table name"
}

variable "bucket" {
  description = "Bucket for state file"
}
variable "aws_access_key" {
  description = "AWS access key for account"
}

variable "aws_secret_access_key" {
  description = "AWS secret key for account"
}

variable "template" {
  description = "instance specific data"
}

variable "environment" {
  description = "instance environment"
}

variable "set_hostname" {
  description = "Whether or not to change the instance hostname"
  default = "true"
}

variable "namespace" {
  description = "Service Naming"
}

variable "public_key_path" {
  description = "The absolute path on disk to the SSH public key."
}

variable "private_key_path" {
  description = "The absolute path on disk to the SSH private key."
}

variable "ami" {
  description = "AWS Image"
}

variable "instance_type" {
  description = "AWS Instance type"
}

variable "vpc_id" {
  description = "The VPC ID"
}

variable "availability_zone" {
  description = "The VPC ID"
}

variable "cidr_block" {
  description = "subnet block"
}

variable "owner" {
  description = "Instance Owner"
}