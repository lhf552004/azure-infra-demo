resource "azurerm_app_service_plan" "plan" {
  name                = "${var.app_service_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.app_service_plan == "F1" ? "Free" : "Standard"
    size = var.app_service_plan
  }
}

resource "azurerm_app_service" "app" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "16.x"
    "ENVIRONMENT"                  = var.environment
  }
}

output "url" {
  value = azurerm_app_service.app.default_site_hostname
}
