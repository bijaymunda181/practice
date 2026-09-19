resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0b8599cb522da7269"

  tags = {
    Name = "New-SG"
  }
  egress {
    from_port       = 22
    to_port         = 22
    protocol        = "-1"

  }
}