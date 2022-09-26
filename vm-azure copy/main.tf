terraform {
  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "storage_account_resource_group"
    storage_account_name = "labtfdanilostac"
    container_name       = "first-container"
    key                  = "azure-vm/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name = "storage_account_resource_group"
    storstorage_account_name = "labtfdanilostac"
    container_name       = "first-container"
    key                  = "azure-vnet/terraform.tfstate"
   }
}