provider "aws" {
  region = "us-east-1"
}

module "web" {
  source = "./web"

}

module "db" {
  source = "./db"
}

output "EIP" {
  value = module.web.public_ip
}

output "db_ip" {
  value = module.db.db_ip
}