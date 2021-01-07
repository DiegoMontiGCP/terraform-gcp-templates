
module "templates_vpc" {
  source = "../../modules/vpc"

  project_id                      = var.project_id
  network_name                    = var.network_name
  delete_default_routes_on_create = var.delete_default_routes_on_create

  # insert the 2 required variables here
}
