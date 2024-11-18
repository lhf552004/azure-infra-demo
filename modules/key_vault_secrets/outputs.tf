output "secret_names" {
  value = [for key, _ in var.secrets : key]
}
