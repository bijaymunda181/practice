terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}



resource "aws_instance" "New" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.launch-wizard-1.id]

  tags = {
    Name = "New-server"
  }
}