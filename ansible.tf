/*
resource "aws_instance" "ansbile" {
  ami = "ami-07d0cf3af28718ef8"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "terraform"
  
  provisioner "remote-exec" {
    inline = [
	"sudo apt update",
	"sudo apt install software-properties-common",
	"sudo apt-add-repository --yes --update ppa:ansible/ansible",
	"sudo apt install ansible -y"
	]

  connection {
    type = "ssh"
	user = "ubuntu"
	private_key = file("./terraform.pem")
	host = self.public_ip
  }
 }
}
*/