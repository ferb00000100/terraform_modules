terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  version    = "~> 3.0"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region = var.region
}

provider "template" {
  version = "~> 2.2.0"
}