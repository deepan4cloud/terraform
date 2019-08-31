/*
resource "aws_instance" "ansbile" {
  ami = "ami-07d0cf3af28718ef8"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "terraform"
  
  provisioner "local-exec" {
    command = "echo ${aws_instance.ansbile.public_ip} >> inventory"
  }
  
  provisioner "local-exec" {
    command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -s -v -u ubuntu --private-key=./terraform.pem nginx.yaml -i inventory
	}
}
*/