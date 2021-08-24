terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#provider "aws" {
region = terraform.workspace == "prod" ? "us-east-1" : "us-east-1"
#profile = var.aws_profile
#}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Almee"

    workspaces {
      name = "aws-terraform-networking-bi"
    }
  }
}
