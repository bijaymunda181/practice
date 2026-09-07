resource "aws_instance" "map-data-type" {
  ami = var.ami["dev"]
  instance_type = var.instance_type["dev"]
 }
 }

