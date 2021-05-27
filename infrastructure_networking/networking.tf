

resource "aws_vpc" "regency-vpc" {
  cidr_block       = "10.30.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name  = "regency-vpc"
    Owner = var.email
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.regency-vpc.id
  cidr_block        = "10.30.5.0/24"
//  cidr_block        = aws_vpc.regency-vpc.cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name  = var.namespace
    Owner = var.email
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.regency-vpc.id
  cidr_block        = "10.30.4.0/24"
  availability_zone = var.availability_zone

  tags = {
    Name  = var.namespace
    Owner = var.email
  }
}

//resource "aws_network_interface" "test1" {
//  subnet_id       = aws_subnet.subnet.id
//  private_ips     = ["10.30.5.50"]
//  security_groups = [var.aws_security_group_id]
//
//  attachment {
//    instance     = var.aws_instance_id
//    device_index = 1
//  }
//}
//
//resource "aws_network_interface" "test2" {
//  subnet_id       = aws_subnet.subnet2.id
//  private_ips     = ["10.30.4.25"]
//  security_groups = [var.aws_security_group_id]
//
//    attachment {
//  instance     = var.aws_instance_id
//      device_index = 1
//    }
//}

resource "aws_network_acl" "regency-tst-acl" {
  vpc_id = aws_vpc.regency-vpc.id
  subnet_ids = [aws_subnet.subnet.id, aws_subnet.subnet2.id]
  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "-1"
    rule_no    = 300
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "regency-tst-acl"
  }
}


// USE THE DEFAULT VPC
//resource "aws_subnet" "subnet" {
//  vpc_id     = var.vpc_id
//  cidr_block = var.cidr_block
//  availability_zone = var.availability_zone
//
//  tags = {
//    Name = var.namespace
//    Owner = var.email
//  }
//}


