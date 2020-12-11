
variable "region" {
  default = "us-east-1"
  description = "region"
}

variable "dynamodb_table" {
  description = "dynamodb table name"
}

variable "service" {
  description = "Bucket for state file"
}

variable "bucket" {
  description = "Bucket for state file"
}

variable "namespace" {
  description = "Service Naming"
}
