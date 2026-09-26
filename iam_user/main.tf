resource "aws_iam_user" "lb" {
  count = 3
  name = "iam_user-${count.index+1}"
  path = "/system/"
}

output "arn" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}




