terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

resource "aws_instance" "precedence-check" {
  ami = "ami-025b6f0b1ac2ef9f7"
  instance_type = var.instance_type

  tags = {
    Name = "variable-precedence"
  }
}