data "azurerm_resource_group" "data_resource_group_name" {
  name = local.resource_group_name
}

resource "azurerm_storage_account" "storage" {
  name                     = local.storage_account_name
  resource_group_name      = data.azurerm_resource_group.data_resource_group_name.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}