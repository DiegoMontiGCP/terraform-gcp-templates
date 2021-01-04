<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.3 |
| google | ~> 3.31 |
| google-beta | ~> 3.31 |

## Providers

| Name | Version |
|------|---------|
| google | ~> 3.31 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_configuration\_default | n/a | <pre>object({<br>    bucket_name                 = string<br>    versioning                  = bool<br>    encryption_key_id           = string<br>    location                    = string<br>    labels                      = map(string)<br>    force_destroy               = bool<br>    storage_class               = string<br>    uniform_bucket_level_access = bool<br>    lifecycle_rule = object({<br>      action = map(string)<br>      condition = object({<br>        age                   = number<br>        with_state            = string<br>        created_before        = string<br>        matches_storage_class = list(string)<br>        num_newer_versions    = number<br>      })<br>    })<br>    logging = object({<br>      log_bucket        = string<br>      log_object_prefix = string<br>    })<br><br>  })</pre> | <pre>{<br>  "bucket_name": null,<br>  "encryption_key_id": null,<br>  "force_destroy": false,<br>  "labels": {},<br>  "lifecycle_rule": null,<br>  "location": null,<br>  "logging": null,<br>  "storage_class": "STANDARD",<br>  "uniform_bucket_level_access": false,<br>  "versioning": false<br>}</pre> | no |
| bucket\_names | List of bucket names to be created. | `any` | n/a | yes |
| project\_id | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| bucket\_full\_details | Bucket names. |
| bucket\_names | Bucket names. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
