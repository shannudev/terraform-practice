provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAVGZDCJGIQVB37SFM"
  secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-0fcf52bcf5db7b003"
  instance_type = "t2.micro"
  key_name = "shannu"

  tags = {
    Name = "HelloWorld"
  }
}