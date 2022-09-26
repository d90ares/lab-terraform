terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }

  backend "s3" {
    bucket = "daniloasantos-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner     = "daniloasantos"
      manage-by = "terraform"
    }
  }
}