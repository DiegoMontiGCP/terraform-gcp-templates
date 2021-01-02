<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_config | n/a | <pre>object({<br>    storage_class        = string<br>    force_destroy_bucket = bool<br>  })</pre> | n/a | yes |
| bucket\_name | n/a | `string` | n/a | yes |
| cdc\_connector\_member | n/a | `any` | n/a | yes |
| gcs\_perm | n/a | `list(string)` | n/a | yes |
| project\_id | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| test12 | n/a | `any` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
