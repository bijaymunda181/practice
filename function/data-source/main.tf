resource "aws_instance" "latest-image" {
  ami = var.ami
  instance_type = var.instance_type
}