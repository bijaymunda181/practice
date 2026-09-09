
resource "aws_instance" "element-f-check" {
  ami = "ami-025b6f0b1ac2ef9f7"
  instance_type = element(var.instance_type, 2)
  tags          = element(var.tags, 2 )
}