variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure location"
}

variable "admin_username" {
  description = "SQL admin username"
}

variable "admin_password" {
  description = "SQL admin password"
}

variable "database_name" {
  description = "Name of the SQL database"
  type        = string
}

variable "sql_version" {
  type        = string
  default     = "12.0"
  description = "The version of the SQL Server."
}
