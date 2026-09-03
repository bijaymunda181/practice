variable "security_group_id" {}
variable "vpc_id" {}

data "aws_security_group" "launch-wizard-1" {
  id = var.security_group_id
}

data "aws_vpc" "selected" {
  id = var.vpc_id
}


