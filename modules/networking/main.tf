module "simple-vpc" {
  source                          = "../network/vpc"
  project_id                      = var.project_id
  network_name                    = var.network_name
  routing_mode                    = var.routing_mode
  description                     = var.description
  delete_default_routes_on_create = var.delete_default_routes_on_create
  mtu                             = var.mtu
}

module "simple-subnet" {
  source           = "../network/subnet"
  project_id       = var.project_id
  network_name     = var.network_name
  subnets          = var.subnets
  secondary_ranges = var.secondary_ranges
}

module "simple-firewall" {
  source       = "../network/subnet"
  project_id   = var.project_id
  network_name = var.network_name
  custom_rules = var.subnets
}
