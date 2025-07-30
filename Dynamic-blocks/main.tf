provider "aws" {
  region = var.region
}



resource "aws_security_group" "ingress-rules" {
  name = "ingress-rules"
  description = "ingress rules"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    
  }
}


}