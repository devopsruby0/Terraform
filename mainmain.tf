terraform {
  required_providers {
    aws = {
      source =  "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./modules/ec2"
  ami = "ami-0522ab6e1ddcc7055"
  instance_type = "t2.micro"
  key_name = "iamtf"
  instance_name = "myEc2"
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "instance_publicip" {
  value = module.ec2_instance.public_ip
}