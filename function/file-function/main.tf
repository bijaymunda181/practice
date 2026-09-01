resource "aws_instance" "main" {
  ami           = "ami-081b0a6eac00b4f53"
  instance_type = "t3.small"

  user_data = file("${path.module}/install.sh")
  tags = {
    Name = "Nginx-Server"
  }
}