variable "resource_group_name" {
  description = "Name of the resource group in which to create the ACR."
  type        = string
}

variable "location" {
  description = "Location in which to create the ACR."
  type        = string
}

variable "acr_name" {
  description = "Name of the ACR to create."
  type        = string
}

variable "acr_sku" {
  description = "SKU (pricing tier) of the ACR."
  type        = string
  default     = "Standard"
}

variable "acr_admin_enabled" {
  description = "Whether or not to enable admin access to the ACR."
  type        = bool
  default     = false
}

# variable "acr_georeplication_locations" {
#   description = "List of locations to replicate the ACR data to."
#   type        = list(string)
#   default     = []
# }

variable "acr_tags" {
  description = "Tags to apply to the ACR resource."
  type        = map(string)
  default     = {}
}
