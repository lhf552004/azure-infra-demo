module "resource_group" {
  source = "./modules/resource_group"

  name     = var.resource_group_name
  location = var.location
}

module "app_service" {
  source = "./modules/app_service"

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  app_service_name    = var.app_service_name
  app_service_plan    = var.app_service_plan
  environment         = var.environment
}

output "app_service_url" {
  value = module.app_service.url
}
