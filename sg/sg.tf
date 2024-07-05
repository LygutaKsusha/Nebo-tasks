

resource "aws_security_group" "public_sg" {
  name = "Allow HTTPS"

  ingress = {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_block = ["0.0.0.0/0"]
  }
  
  egress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
  }
}

output "sg_name" {
  value = aws_security_group.public_sg.name
}

