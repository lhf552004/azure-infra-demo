# Resource Group
module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
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
  environment         = var.environment
}

# Optional SQL Database
module "sql_database" {
  source              = "./modules/sql_database"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  admin_username      = module.key_vault_secrets.sql_admin_username
  admin_password      = module.key_vault_secrets.sql_admin_password
  database_name       = var.database_name

}

module "key_vault_secrets" {
  source              = "./modules/key_vault_secrets"
  key_vault_name      = var.key_vault_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  sql_admin_username = var.sql_admin_username
  sql_admin_password = var.sql_admin_password
}
