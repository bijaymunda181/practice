data "aws_ami" "latest-ami" { executable_users = ["self"]
  most_recent      = true
  owners           = ["amazon"]

}