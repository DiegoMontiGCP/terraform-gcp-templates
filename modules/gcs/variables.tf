variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "bucket_config" {
  type = object({
    storage_class        = string
    force_destroy_bucket = bool
  })
}

variable "gcs_perm" {
  type = list(string)
}

variable "cdc_connector_member" {
  type = any
}

variable "test12" {
  type = any
}
