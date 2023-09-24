terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
#provider "aws" {
 # region = "eu-central-2"
#}

module "server" {
  source = "https://github.com/gerryik/terraform-base-iac/tree/main//modules/ec2"
  num = 2
  region = "eu-central-2"
}
