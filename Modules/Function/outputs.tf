output "function_app_id" {
  description = "The ID of the Azure Function App"
  value = azurerm_function_app.fa.id
}

output "function_app_name" {
description = "The name of the Azure Function App that was created."
value = azurerm_function_app.fa.name
}

output "function_app_default_hostname" {
description = "The default hostname of the Azure Function App that was created."
value = azurerm_function_app.fa.default_hostname
}

output "storage_account_id" {
description = "The ID of the Azure Storage Account that was created."
value = azurerm_storage_account.sa.id
}

output "storage_account_name" {
description = "The name of the Azure Storage Account that was created."
value = azurerm_storage_account.sa.name
}

output "storage_account_primary_access_key" {
description = "The primary access key of the Azure Storage Account that was created."
value = azurerm_storage_account.sa.primary_access_key
}

