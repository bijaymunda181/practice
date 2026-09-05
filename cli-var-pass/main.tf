resource "aws_instance" "New" {
  ami           = "ami-025b6f0b1ac2ef9f7"
  instance_type = var.instance_type

  tags = {
    Name = "manual-var"
  }
}

variable "instance_type" {}

# you can pass the variable using CLI when you run the command, terraform plan or terraform apply
# terraform plan -var="instance_type=t3.micro" or if you just run the command terraform plan it will ask for instance type.