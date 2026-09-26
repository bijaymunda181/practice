resource "aws_iam_user" "prod-users" {
  for_each = toset(["user-1", "user-2", "user-3", "user-1"])
  name = each.key
}

resource "aws_instance" "ec2" {
  for_each = {
    key1 = "t3.micro"
    key2 = "t3.small"
  }
  ami = "ami-081b0a6eac00b4f53"
  instance_type = each.value
  key_name = each.key
  tags = {
    Name  = each.value
  }
}