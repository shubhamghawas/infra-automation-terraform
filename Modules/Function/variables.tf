variable "resource_group_name" {
  description = "Name of the resource group in which to create the function app."
  type        = string
}

variable "location" {
  description = "Location in which to create the function app."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account to create for the function app."
  type        = string
}

variable "storage_account_tier" {
  description = "Storage account tier for the function app."
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Storage account replication type for the function app."
  type        = string
  default     = "LRS"
}

variable "function_app_name" {
  description = "Name of the function app to create."
  type        = string
}
variable "app_settings" {
  description = "Map of app settings to configure for the function app."
  type        = map(string)
  default     = {}
}

variable "always_on" {
  description = "Whether the function app should always be running."
  type        = bool
  default     = true
}

variable "dotnet_framework_version" {
  description = "Version of the .NET Framework to use for the function app."
  type        = string
  default     = "v6.0"
}
# variable "app-service-plan-name" {
#   type = string
#   default = "cie-dev-app-service-plan"
# }
