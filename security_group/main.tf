resource "aws_security_group" "dynamic_sg" {
  name = "dynamic-sg"
  tags = {
    Name = "dynamic_sg"
  }

  dynamic "ingress" {
    for_each = var.ingress_ports

    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}



