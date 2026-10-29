terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.70"
    }
  }
  backend "s3" {
    bucket       = "terraform-s3-bucket-2026-muddapu"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}


provider "aws" {
  region = "us-east-1"
}

