resource "aws_iam_user" "lb" {
  count = 3
  name = "iam_user.${count.index}"
  path = "/system/"

  tags = {
    tag-key = "user-${count.index+1}"
  }
}


