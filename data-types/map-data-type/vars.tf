variable "ami" {
  default = {
    prod = "ami-081b0a6eac00b4f53"
    dev  = "ami-025b6f0b1ac2ef9f7"
  }
}
variable "instance_type" {
  default = {
    prod = "t3.small"
    dev  = "t3.micro"
  }
}