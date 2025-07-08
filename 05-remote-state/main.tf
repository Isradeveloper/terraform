resource "azurecaf_name" "rg_name" {
  name          = "isradev"
  resource_type = "azurerm_resource_group"
  prefixes      = ["dev"]
  suffixes      = ["y", "z"]
  random_length = 3
  clean_input   = true
}

resource "azurerm_resource_group" "rg" {
  name     = azurecaf_name.rg_name.result
  location = "eastus"
}

resource "azurecaf_name" "storage_name" {
  name          = "isradev"
  resource_type = "azurerm_storage_account"
  prefixes      = ["dev"]
  random_length = 3
  clean_input   = true
}

resource "azurerm_storage_account" "storage_account" {
  name                     = azurecaf_name.storage_name.result
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "Development"
  }
}