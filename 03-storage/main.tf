terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.suscription_id
}

resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = "eastus"
}