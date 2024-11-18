variable "name" {
  description = "Name of the App Service"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure location"
}

variable "environment" {
  description = "Environment (e.g., dev, test, prod)"
}

variable "sku_name" {
  description = "The SKU of the App Service plan (e.g., P1v2, F1)."
  type        = string
  default     = "F1" # Free tier (or replace with a suitable default)
}

variable "os_type" {
  description = "The operating system for the App Service plan (e.g., Windows, Linux)."
  type        = string
  default     = "Linux"
}
