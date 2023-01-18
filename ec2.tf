provider "aws" {
  region     = "us-east-1"
   access_key = "put here"
   secret_key = "put here"
}

resource "aws_instance" "web" {
  ami           = "ami-029562ad87fe1185c"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
