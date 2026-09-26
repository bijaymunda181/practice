resource "aws_instance" "EC2" {
  count = 4
  ami = "ami-00adafae70b8029d8"
  instance_type = "t3.small"
}