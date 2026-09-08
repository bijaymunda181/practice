
resource "aws_instance" "ec2" {
  ami = lookup(var.ami, var.region )
  instance_type = "t3.micro"
}

output "aws_instance" {
  value = aws_instance.ec2
}