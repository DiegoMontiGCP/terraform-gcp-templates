variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "bucket_names" {
  description = "List of bucket names to be created."
  type        = any
}

variable "bucket_configuration_default" {
  type = object({
    bucket_name                 = string
    versioning                  = bool
    encryption_key_id           = string
    location                    = string
    labels                      = map(string)
    force_destroy               = bool
    storage_class               = string
    uniform_bucket_level_access = bool
    lifecycle_rule = object({
      action = map(string)
      condition = object({
        age                   = number
        with_state            = string
        created_before        = string
        matches_storage_class = list(string)
        num_newer_versions    = number
      })
    })
    logging = object({
      log_bucket        = string
      log_object_prefix = string
    })

  })

  default = {
    bucket_name                 = null
    versioning                  = false
    encryption_key_id           = null
    location                    = null
    labels                      = {}
    force_destroy               = false
    storage_class               = "STANDARD"
    uniform_bucket_level_access = false
    lifecycle_rule              = null
    logging                     = null
  }
}
