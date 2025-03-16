data "azurerm_resource_group" "data_resource_group_name" {
  name = local.resource_group_name
}

resource "azurerm_key_vault" "kv" {
  name                = local.key_vault_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.data_resource_group_name.name
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}