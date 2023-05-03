resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = var.acr_sku
  admin_enabled            = var.acr_admin_enabled
  georeplication_locations = var.acr_georeplication_locations
  tags                     = var.acr_tags
}
