resource "aws_instance" "web" {
  count = 1
  ami           = "ami-00dfe2c7ce89a450b"
  instance_type = "t2.micro"

  tags = {
    Name = "InstanceTest"
  }
}
