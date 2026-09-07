resource "aws_instance" "map-data-type" {
  ami = var.ami["prod"]
  instance_type = var.instance_type["prod"]
}

