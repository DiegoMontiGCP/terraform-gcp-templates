resource "google_storage_bucket" "dataflow_staging_bucket" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.region
  storage_class = var.bucket_config.storage_class
  force_destroy = var.bucket_config.force_destroy_bucket
}
