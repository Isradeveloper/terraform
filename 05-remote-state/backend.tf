terraform {
  backend "azurerm" {
    storage_account_name = "isradevterraformstorage"
    container_name       = "states"
    key                  = "terraform.tfstate"
  }
}