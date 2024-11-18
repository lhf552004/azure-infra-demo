variable "resource_group_name" {
  description = "Resource Group for App Service"
}

variable "location" {
  description = "Azure region for the App Service"
}

variable "app_service_name" {
  description = "Name of the App Service"
}

variable "app_service_plan" {
  description = "App Service Plan tier"
}

variable "environment" {
  description = "Environment (e.g., dev, test, prod)"
}
