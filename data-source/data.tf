data "aws_ami" "latest-ami" {
  most_recent = true
  owners = ["amazon"]
}