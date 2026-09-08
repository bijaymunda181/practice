
resource "aws_instance" "ec2" {
  ami = lookup(var.ami, var.region )
}

output "aws_instance" {
  value = aws_instance.ec2
}