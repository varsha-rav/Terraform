provider "aws" {
  region = var.region

}

resource "aws_security_group" "all-ssh" {
  name = "Allow ssh"

}

resource "aws_vpc_security_group_ingress_rule" "ssh-rule" {
  security_group_id = aws_security_group.all-ssh.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0" 
  description       = "Allow SSH inbound"
}

/*resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-ec2-key"         # Name the key pair in AWS
  public_key = file("firstkey.pem") # Path to your local public key (e.g., id_rsa.pub)
}*/


resource "aws_instance" "myec2" {
  ami             = "ami-0ec18f6103c5e0491"
 vpc_security_group_ids = [aws_security_group.all-ssh.id]
  key_name        = "firstkey"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo Hello from terraform"

  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./firstkey.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nginx",
      "sudo systemctl start nginx"
    ]

  }

}
