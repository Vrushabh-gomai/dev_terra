terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_config_files      = ["/home/ubuntu/.aws/conf"]
  shared_credentials_files = ["/home/ubuntu/.aws/creds"]
  profile                  = "terra-server"
}

resource "aws_instance" "ins_1" {
  ami = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"
  key_name = "tier"  
}
