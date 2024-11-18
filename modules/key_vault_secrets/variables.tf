# modules/key_vault_secrets/variables.tf
variable "key_vault_name" {
  description = "The name of the Azure Key Vault"
  type        = string
}

variable "sql_admin_password" {
  description = "SQL admin password"
  type        = string
  sensitive   = true
}

variable "sql_admin_username" {
  description = "SQL admin username"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure location"
}