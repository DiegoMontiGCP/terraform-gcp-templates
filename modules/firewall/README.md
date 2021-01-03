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
| custom\_rules | List of custom rule definitions (refer to variables file for syntax). | <pre>map(object({<br>    description          = string<br>    direction            = string<br>    action               = string # (allow|deny)<br>    ranges               = list(string)<br>    sources              = list(string)<br>    targets              = list(string)<br>    use_service_accounts = bool<br>    rules = list(object({<br>      protocol = string<br>      ports    = list(string)<br>    }))<br>    extra_attributes = map(string)<br>  }))</pre> | `{}` | no |
| network\_name | Name of the network this set of firewall rules applies to. | `any` | n/a | yes |
| project\_id | Project id of the project that holds the network. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| custom\_egress\_allow\_rules | Custom egress rules with allow blocks. |
| custom\_egress\_deny\_rules | Custom egress rules with allow blocks. |
| custom\_ingress\_allow\_rules | Custom ingress rules with allow blocks. |
| custom\_ingress\_deny\_rules | Custom ingress rules with deny blocks. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
