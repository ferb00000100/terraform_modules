resource "aws_security_group" "infrastructure_sg" {
  name        = var.environment
  description = var.environment
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.cidr_block_priv
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_block_priv
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    name = "tools"
    service = "scripting"
    owner = var.email
    environment = terraform.workspace
    contact = var.email

  }
}