# Resource Group
module "resource_group" {
  source  = "./modules/resource_group"
  name    = var.resource_group_name
  location = var.location
}

# Storage Account for React Frontend
module "storage_account" {
  source              = "./modules/storage_account"
  name                = var.frontend_storage_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
}

# App Service for Backend (C#)
module "app_service" {
  source              = "./modules/app_service"
  name                = var.backend_app_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  environment = var.environment
}

# Optional SQL Database
module "sql_database" {
  source              = "./modules/sql_database"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  admin_username      = data.azurerm_key_vault_secret.sql_admin_username.value
  admin_password      = data.azurerm_key_vault_secret.sql_admin_password.value
  database_name       = "my-database"
}

data "azurerm_key_vault_secret" "sql_admin_password" {
  name         = "sql-admin-password"
  key_vault_id = var.key_vault_id
}

data "azurerm_key_vault_secret" "sql_admin_username" {
  name         = "sql-admin-username"
  key_vault_id = var.key_vault_id
}

module "key_vault_secrets" {
  source       = "./modules/key_vault_secrets"
  key_vault_id = var.key_vault_id

  secrets = {
    sql-admin-username = var.sql_admin_username
    sql-admin-password = var.sql_admin_password
  }
}
