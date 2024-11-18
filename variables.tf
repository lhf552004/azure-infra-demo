variable "location" {
  description = "Azure region for resources"
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  default     = "terraform-rg"
}

variable "app_service_name" {
  description = "Name of the Azure App Service"
  default     = "terraform-app-service"
}

variable "app_service_plan" {
  description = "App Service Plan type (Free, Standard, Premium)"
  default     = "F1"
}

variable "environment" {
  description = "Environment (e.g., dev, test, prod)"
  default     = "dev"
}
