variable "location" {
  description = "Azure location"
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "web-system-rg"
}

variable "frontend_storage_name" {
  description = "Name of the storage account for the React frontend"
  default     = "frontendstorage123"
}

variable "backend_app_name" {
  description = "Name of the backend Azure App Service"
  default     = "backend-api-service"
}

variable "sql_admin_username" {
  description = "SQL admin username"
}

variable "sql_admin_password" {
  description = "SQL admin password"
}

variable "environment" {
  description = "Environment (e.g., dev, test, prod)"
  default     = "dev"
}

variable "key_vault_name" {
  description = "The name of the Azure Key Vault"
  type        = string
}

variable "database_name" {
  description = "The name of the database"
  type        = string
}

variable "sku_name" {
  description = "Sku name"
  type        = string
}