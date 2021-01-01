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
| composer\_env\_name | n/a | `string` | n/a | yes |
| composer\_private\_env | n/a | <pre>object({<br>    enabled                = bool<br>    master_ipv4_cidr_block = string<br>  })</pre> | n/a | yes |
| network | n/a | `any` | n/a | yes |
| node\_config | n/a | <pre>object({<br>    disk_size_gb      = number<br>    machine_type      = string<br>    enable_ip_aliases = bool<br>  })</pre> | n/a | yes |
| node\_count | n/a | `string` | n/a | yes |
| project\_id | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| service\_account | n/a | `any` | n/a | yes |
| software\_config | n/a | <pre>object({<br>    image_version  = string<br>    python_version = string<br>    pypi_packages  = map(any)<br>    env_variables  = map(any)<br>    airflow_config = map(any)<br>  })</pre> | n/a | yes |
| subnetwork | n/a | `any` | n/a | yes |
| test\_required | n/a | `string` | n/a | yes |
| zone | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| airflow\_uri | URI of the Apache Airflow Web UI hosted within the Cloud Composer Environment. |
| composer\_env\_id | ID of Cloud Composer Environment. |
| composer\_env\_name | Name of the Cloud Composer Environment. |
| gcs\_bucket | Google Cloud Storage bucket which hosts DAGs for the Cloud Composer Environment. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
