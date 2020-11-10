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

resource "aws_s3_bucket" "backup" {
    name = "jkjn-bedrock-backup"
}

# module "iam" {
#     source = "iam"
    
# }

# module "instance" {
#     source = "ec2"
    
# }