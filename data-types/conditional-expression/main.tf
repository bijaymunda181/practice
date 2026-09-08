
resource "aws_instance" "dev" {
  count = var.latest == true ? 1 : 0
  ami = "ami-081b0a6eac00b4f53"
  instance_type = "t3.micro"
}

