resource "aws_instance" "instance" {
  ami           = var.ami-var
  instance_type = "t2.micro"
}

variable "ami-var" {}