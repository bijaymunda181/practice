variable "ami" {
  type = map
  default = {
    us-east-1  = "ami-081b0a6eac00b4f53"
    ap-south-1  = "ami-025b6f0b1ac2ef9f7"

  }
}

variable "region" {
  default = "us-east-1"
}