

resource "aws_vpc" "challenge1_vpc" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "TerraformVPC"
  }
}


resource "aws_instance" "db_server" {
  ami = "ami-4858959499403"
  instance_type = "t2.micro"

  tags = {
    Name = "db-server"
  }

}

output "db_ip" {
  value = aws_instance.db_server.private_ip
}