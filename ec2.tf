provider "aws" {
  region     = "us-east-1"
   access_key = "put here"
   secret_key = "put here"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
