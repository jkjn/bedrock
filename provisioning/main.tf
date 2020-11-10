terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-east-2"
}

module "s3" {
  source = "s3"
}

# module "iam" {
#     source = "iam"
    
# }

# module "instance" {
#     source = "ec2"
    
# }