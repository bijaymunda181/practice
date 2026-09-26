resource "aws_iam_user" "prod-users" {
  for_each = toset(["user-1", "user-2", "user-3", "user-1"])
  name = each.key
}