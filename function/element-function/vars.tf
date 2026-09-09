variable "instance_type" {
  default = [
    "t3.large",
    "t3.small",
    "t3.micro"
  ]
}

variable "tags" {
  default = ["server1", "server2", "server3"]
}