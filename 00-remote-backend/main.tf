terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  default_tags {

  }
  assume_role {
    role_arn = "arn:aws:iam::110044885980:role/workshop-march-role"
  }
}