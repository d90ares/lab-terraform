terraform {
  required_version = ">= 0.15.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ""
    }
  }
}

provider "aws" {
  
}

provider "azure_rm" {
    features {}
  
}

resource "aws_instance" "vm1" {
  
}

resource "azurerm_virtual_desktop_workspace" "name" {
  
}