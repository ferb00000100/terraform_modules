provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region = var.region
}
//provider "aws" {
//  region                  = "us-east-1"
//  shared_credentials_file = "/home/jasonmartin/.aws/credentials"
//  profile                 = "regency_sandbox"
//}
