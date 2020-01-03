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


resource "aws_instance" "london" {
  provider      = aws.london
  ami           = "ami-05f37c3995fffb4fd"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-London"
  }
}


###Calling the second resourse via module with custom provider
module "frankfurt-ec2" {
  source = "./module"
  providers = {
    aws = aws.frank
  }
}
