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



# variable "components" {
#   default = {
#     prod = {
#       ami = "ami-081b0a6eac00b4f53"
#       instance_type = "t3.small"
#     }
#     dev = {
#       ami = "ami-025b6f0b1ac2ef9f7"
#       instance_type = "t3.micro"
#     }
#     tags ={
#       name =
#     }
#   }
# }

