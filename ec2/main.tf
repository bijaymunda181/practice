terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}



resource "aws_instance" "New" {
  ami           = "ami-025b6f0b1ac2ef9f7"
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.launch-wizard-1.id]

  tags = {
    Name = "New-server"
  }
}