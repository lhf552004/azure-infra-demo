resource "azurerm_mssql_server" "sql_server" {
  name                         = "${var.resource_group_name}-sql-server"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  version                      = var.sql_version
}

resource "azurerm_sql_database" "sql_database" {
  name                = "webdb"
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_mssql_server.sql_server.name
}

output "connection_string" {
  value     = azurerm_mssql_server.sql_server.administrator_login
  sensitive = true
}
