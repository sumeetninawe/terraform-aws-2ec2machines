terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "demo" {
  count                   = 2
  ami                     = var.ami
  instance_type           = var.type

  tags = {
    name = "Demo VM ${count.index}"
  }
}