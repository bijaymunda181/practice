resource "aws_instance" "New" {
  ami           = "ami-025b6f0b1ac2ef9f7"
  instance_type = var.instance_type

  tags = {
    Name = "manual-var"
  }
}

variable "instance_type" {}