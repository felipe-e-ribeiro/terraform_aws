resource "aws_instance" "web" {
  count         =  var.instance_enabled ? 1 : 0
  ami           = "ami-00dfe2c7ce89a450b"
  instance_type = "t2.micro"

  tags = {
    Name = "InstanceWeb"
  }
}
