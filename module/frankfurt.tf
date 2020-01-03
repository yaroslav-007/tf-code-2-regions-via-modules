resource "aws_instance" "frankfurt" {
  ami           = "ami-0d4c3eabb9e72650a"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-Frankfurt"
  }
}