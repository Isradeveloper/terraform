data "azurerm_resource_group" "imported_rg" {
  name = "isradevterraformstorage "
}

resource "azurerm_storage_account" "imported_storage" {
  name                     = "isradevterraformstorage"
  resource_group_name      = data.azurerm_resource_group.imported_rg.name
  location                 = data.azurerm_resource_group.imported_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
