resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name
  location = var.location
}
module "network" {
    source              = "Azure/vnet/azurerm"
    resource_group_name = azurerm_resource_group.rg1.name
    vnet_name           = var.vnet_name
    vnet_location        = var.vnet_location
    address_space      = var.vnet_address_space
    use_for_each = true
    tags                = {
                            environment = "dev"
                          }
    depends_on = [azurerm_resource_group.rg1]
}
module "acr" {
  source = "./Modules/ACR"
  acr_name = var.acr_name
  acr_admin_enabled = false
  resource_group_name = azurerm_resource_group.rg1.name
  location = var.location
}
module "function_app01" {
  source                   = "./Modules/Function"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  storage_account_name     = "ciedevsaforfunctionapp01"
  function_app_name        = "cie-dev-domain-service-booking"
  app_settings             = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}
module "function_app02" {
  source                   = "./Modules/Function"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  storage_account_name     = "ciedevsaforfunctionapp02"
  function_app_name        = "cie-dev-domain-service-checkin"
  app_settings             = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}
module "function_app03" {
  source                   = "./Modules/Function"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  storage_account_name     = "ciedevsaforfunctionapp03"
  function_app_name        = "cie-dev-domain-service-update-availability"
  app_settings             = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}
module "function_app04" {
  source                   = "./Modules/Function"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  storage_account_name     = "ciedevsaforfunctionapp04"
  function_app_name        = "cie-dev-service-eventproxy"
  app_settings             = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}
module "function_app05" {
  source                   = "./Modules/Function"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  storage_account_name     = "ciedevsaforfunctionapp05"
  function_app_name        = "cie-dev-service-eventsync"
  app_settings             = {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}