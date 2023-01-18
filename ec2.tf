provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-06878d265978313ca"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
