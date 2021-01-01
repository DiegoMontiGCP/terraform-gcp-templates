<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| composer\_env\_name |  | string | n/a | yes |
| composer\_private\_env |  | object | n/a | yes |
| network |  | any | n/a | yes |
| node\_config |  | object | n/a | yes |
| node\_count |  | string | n/a | yes |
| project\_id |  | string | n/a | yes |
| region |  | string | n/a | yes |
| service\_account |  | any | n/a | yes |
| software\_config |  | object | n/a | yes |
| subnetwork |  | any | n/a | yes |
| zone |  | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| airflow\_uri | URI of the Apache Airflow Web UI hosted within the Cloud Composer Environment. |
| composer\_env\_id | ID of Cloud Composer Environment. |
| composer\_env\_name | Name of the Cloud Composer Environment. |
| gcs\_bucket | Google Cloud Storage bucket which hosts DAGs for the Cloud Composer Environment. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
