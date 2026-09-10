resource "aws_instance" "latest-ami" {
  ami = var.ami
  instance_type = var.instance_type
}