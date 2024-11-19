resource "azurerm_mssql_server" "sql_server" {
  name                         = "${var.resource_group_name}-sql-server"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  version                      = var.sql_version
}

resource "azurerm_mssql_database" "sql_database" {
  server_id    = azurerm_mssql_server.sql_server.id
  name         = "webdb"
  sku_name     = "Basic"
  max_size_gb  = 2
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
}

output "connection_string" {
  value     = azurerm_mssql_server.sql_server.administrator_login
  sensitive = true
}
