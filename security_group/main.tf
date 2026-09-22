
resource "aws_instance" "my_instance" {
  ami = "ami-00adafae70b8029d8"
  instance_type = "t3.small"
  security_groups = [aws_security_group.dynamic_sg.id]
}

resource "aws_security_group" "dynamic_sg" {
  name = "dynamic-sg"
  tags = {
    Name = "dynamic_sg"
  }

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port

    content {
      from_port = port.value
      to_port   = port.value
      protocol  = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
    dynamic "egress" {
      for_each = var.egress_ports
      iterator = port

      content {
        from_port = port.value
        to_port   = port.value
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }
  }





