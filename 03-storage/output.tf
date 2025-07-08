output "id_rg_output" {
  value = azurerm_resource_group.rg.id
}

output "storage_connection_url" {
  value = azurerm_storage_account.storage_account.primary_connection_string
  sensitive = true
}