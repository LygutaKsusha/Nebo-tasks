variable "instance_id" {
  type = string
}


resource "aws_eip" "my_elastic_ip" {
  instance = var.instance_id
}


output "EIP" {
  value = aws_eip.my_elastic_ip.public_ip
}
