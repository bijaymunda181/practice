variable "ingress_ports" {
  type = list(number)
  description = "list of ingress_port"
  default = [8200, 22, 80, 443, 9500]
}

variable "egress_ports" {
  type = list(number)
  description = "list of egress_port"
  default = [8200, 22, 80, 443, 9500]
}