
locals {
  merge_default_config = [for sa in var.service_accounts : merge(var.service_account_default, sa)]
}

resource "google_service_account" "service_account" {
  for_each = { for sa in local.merge_default_config : sa.sa_id => sa }

  project      = var.project_id
  account_id   = each.key
  display_name = lookup(each.value, "display_name", null)
  description  = lookup(each.value, "description", null)

}
