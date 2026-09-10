resource "aws_instance" "latest-ami" {
  ami = data.aws_ami.latest-ami.id
  instance_type = var.instance_type
}