resource "aws_instance" "map-data-type" {
  count = 2
  ami = var.ami["dev"]
  instance_type = var.instance_type["dev"]
  availability_zone = var.availability_zone[0]

  tags = {
    Name = "dev-server-${count.index+1}"
  }

 }


