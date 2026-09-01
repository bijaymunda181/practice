resource "aws_instance" "main" {
  ami           = "ami-081b0a6eac00b4f53"
  instance_type = "t2.micro"

  user_data = file("${path.module}/install.sh")
  tags = {
    Nmae = "Nginx-server"
  }
}