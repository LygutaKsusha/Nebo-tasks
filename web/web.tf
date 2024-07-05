

resource "aws_vpc" "challenge1_vpc" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "TerraformVPC"
  }
}

resource "aws_instance" "challenge1" {
  ami = "ami-4858959499403"
  instance_type = "t2.micro"
  security_groups = [module.sg.sg_name]
  user_data = file("script.sh")


    tags = {
    Name = "web-server"
  }
}

module "eip" {
  source = "../eip"
  instance_id = aws_instance.challenge1.id
}

module "sg" {
  source = "../sg"
}

output "public_ip" {
  value = module.eip.EIP
}