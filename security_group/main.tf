resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0b8599cb522da7269"

  tags = {
    Name = "New-SG"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "vpc-0b8599cb522da7269"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}