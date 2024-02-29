terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "us-west-2" #Oregon
}

resource "aws_instance" "app_server" {
  ami           = "ami-008fe2fc65df48dac"
  instance_type = "t2.micro"
  key_name = "iac-ale"
 
  tags = {
    Name = "FirstIacInstance"
  }
}
