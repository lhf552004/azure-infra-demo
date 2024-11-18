output "storage_account_endpoint" {
  value = module.storage_account.endpoint
}

output "backend_app_service_name" {
  value = module.app_service.name
}

output "sql_connection_string" {
  value = module.sql_database.connection_string
}
