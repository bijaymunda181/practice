terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

resource "aws_key_pair" "login_key" {
  key_name = "login_key"
  public_key = file ("${path.module}/id_rsa_pub")
}

resource "aws_instance" "app" {
  ami = lookup(var.ami, var.region )
  instance_type = "t3.small"
  key_name = aws_key_pair.login_key.key_name
  count = 2
  tags = {
    Name = element(var.tags, count.index )
  }
}