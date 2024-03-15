terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.aws_region
  profile = var.profile
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}
