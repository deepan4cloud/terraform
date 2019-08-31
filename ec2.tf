resource "aws_instance" "e2caws" {
  ami = "ami-07d0cf3af28718ef8"
  instance_type = "t2.micro"
  security_groups = ["default"]
  provider = "aws.mumbai"
}
