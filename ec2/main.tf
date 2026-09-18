terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}



resource "aws_instance" "New" {
  count = 2
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.launch-wizard-1.id]
  user_data = file("${path.module}/install.sh")
  tags = var.tags
  }
