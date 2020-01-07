provider "aws" {
  region     = "eu-west-2"
  alias      = "london"
  access_key = ""
  secret_key = ""
}

provider "aws" {
  alias      = "frank"
  region     = "eu-central-1"
  access_key = ""
  secret_key = ""
}


variable "ami-l"{
  default = "ami-05f37c3995fffb4fd"
}

variable "ami-f"{
  default = "ami-0d4c3eabb9e72650a"
}

module "ec2-l" {
  source = "./module"
  providers = {
    aws = aws.london
  }
  ami-var=var.ami-l
}

module "ec2-f" {
  source = "./module"
  providers = {
    aws = aws.frank
  }
  ami-var=var.ami-f
}