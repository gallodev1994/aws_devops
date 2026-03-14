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
  region = var.assume_role.region
  default_tags {

  }

  #boa pratica conectar usando a role ao inves de usar as credenciais
  assume_role {
    role_arn = var.assume_role.arn
  }
}