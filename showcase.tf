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
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "ec2_showcase2" {
  ami           	= "ami-0cf6f5c8a62fa5da6"
  instance_type 	= "t2.micro"
  iam_instance_profile 	= "SessionManagerInstance"

  tags = {
    Name = var.instance_name
  }

}

