resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}
resource "azurerm_app_service_plan" "asp" {
  name                = var.app-service-plan-name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = "Basic"
    size = "B1"
  }
}
resource "azurerm_function_app" "fa" {
  name                      = var.function_app_name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  app_service_plan_id       = azurerm_app_service_plan.asp.id
  storage_account_name      = azurerm_storage_account.sa.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key
  app_settings              = var.app_settings
}
