<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | n/a | `string` | n/a | yes |
| service\_account\_default | n/a | <pre>object({<br>    account_id   = string<br>    display_name = string<br>    description  = string<br>  })</pre> | <pre>{<br>  "account_id": null,<br>  "description": false,<br>  "display_name": null<br>}</pre> | no |
| service\_accounts | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| serviceaccount\_full\_details | Full service account details. |
| serviceaccount\_ids | service account ids. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
