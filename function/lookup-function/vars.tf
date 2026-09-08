variable "ami" {
  type = map
  default = {
    us-east-1a  = "ami-081b0a6eac00b4f53"
    us-east-1b  = "ami-025b6f0b1ac2ef9f7"

  }
}

variable "region" {
  default = "us-east-1"
}