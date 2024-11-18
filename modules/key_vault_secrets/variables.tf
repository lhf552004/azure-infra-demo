variable "key_vault_id" {
  type        = string
  description = "The ID of the Azure Key Vault where secrets will be stored."
}

variable "secrets" {
  type        = map(string)
  description = "A map of secret names to values to store in the Key Vault."
}
