terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "remote" {}
}

provider "aws" {
    region = "us-east-2"
}

module "s3" {
  source = "../../provisioning/s3"
  env = var.env
  tags = var.tags
}

# module "iam" {
#     source = "iam"
    
# }

# module "instance" {
#     source = "ec2"
    
# }