
locals {
  merge_default_config = [for bucket in var.bucket_names: merge(var.bucket_configuration_default,bucket)]
}


resource "google_storage_bucket" "buckets" {
  for_each      = {for bucket in local.merge_default_config: bucket.name => bucket}
  name          = each.key
  project       = var.project_id
  location      = each.value.location !=null ? each.value.location : var.region
  storage_class = each.value.storage_class
  force_destroy = each.value.force_destroy
  uniform_bucket_level_access = each.value.uniform_bucket_level_access
  
  
  dynamic "logging" {
     for_each = each.value.logging == null ? {} : map("temp", each.value.logging)
     content {
       log_bucket = lookup(logging.value ,"log_bucket", null)
       log_object_prefix = lookup(logging.value, "log_object_prefix", null)
     }
  }

  dynamic "lifecycle_rule" {
    for_each = each.value.lifecycle_rule == null ? {} : map("temp", each.value.lifecycle_rule)
    content {
      action {
        type = lookup(lifecycle_rule.value.action, "type" , null)
        storage_class = lookup(lifecycle_rule.value.action, "storage_class", null)
      }

      condition {
        age = lookup(lifecycle_rule.value.condition, "age", null)
        with_state = lookup(lifecycle_rule.value.condition, "with_state", null)
        created_before = lookup(lifecycle_rule.value.condition, "created_before", null)
        matches_storage_class = lookup(lifecycle_rule.value.condition, "matches_storage_class", null)
        num_newer_versions =  lookup(lifecycle_rule.value.condition, "num_newer_versions", null)
      }
    }
  }

  labels = each.value.labels

  dynamic "encryption" {
    for_each = each.value.encryption_key_id == null ? [] : [each.value.encryption_key_id]
    content {
      default_kms_key_name = encryption.value
    }
  }

  versioning {
    enabled = each.value.versioning
  }

}
