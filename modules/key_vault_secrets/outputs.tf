output "sql_admin_username" {
  value     = azurerm_key_vault_secret.sql_admin_username.value
  sensitive = true
}

output "sql_admin_password" {
  value     = azurerm_key_vault_secret.sql_admin_password.value
  sensitive = true
}
