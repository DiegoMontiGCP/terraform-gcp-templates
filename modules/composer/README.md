# Terraform Cloud Composer Environment Module
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Usage
Basic usage of this submodule: 
```hcl
module "composer" {
  source  = ""
  version = ""
  project_id = "<Project ID>

  # insert the 20 required variables here
}

```
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
| composer\_env\_name | Name of Cloud Composer Environment. | `string` | n/a | yes |
| composer\_private\_env | Enabled and Configure Private IP Composer Environment | <pre>object({<br>    private_ip_enabled         = bool<br>    master_ipv4_cidr_block     = string<br>    cloud_sql_ipv4_cidr_block  = string<br>    web_server_ipv4_cidr_block = string<br>  })</pre> | <pre>{<br>  "cloud_sql_ipv4_cidr_block": null,<br>  "master_ipv4_cidr_block": null,<br>  "private_ip_enabled": false,<br>  "web_server_ipv4_cidr_block": null<br>}</pre> | no |
| composer\_service\_account | Service Account to be used for running Cloud Composer Environment. | `any` | `null` | no |
| ip\_allocation\_settings | IP allocation policy | <pre>object({<br>    enable_ip_aliases        = bool<br>    cluster_ipv4_cidr_block  = string<br>    services_ipv4_cidr_block = string<br>  })</pre> | <pre>{<br>  "cluster_ipv4_cidr_block": null,<br>  "enable_ip_aliases": false,<br>  "services_ipv4_cidr_block": null<br>}</pre> | no |
| network | The Virtual Private Cloud Network. | `any` | n/a | yes |
| node\_config | Configure the node and optionally enable VPC Native GKE cluster in your envrionment. | <pre>object({<br>    disk_size_gb = number<br>    machine_type = string<br>    oauth_scopes = list(string)<br>  })</pre> | <pre>{<br>  "disk_size_gb": 100,<br>  "machine_type": "n1-standard-1",<br>  "oauth_scopes": null<br>}</pre> | no |
| node\_count | Number of nodes in the GKE cluster that will be used to run the composer environment | `number` | `3` | no |
| project\_id | Project ID where Cloud Composer Environment is created. | `string` | n/a | yes |
| region | Region where Cloud Composer Environment is created. | `string` | n/a | yes |
| software\_config | Composer software configuration. | <pre>object({<br>    image_version  = string<br>    python_version = string<br>    pypi_packages  = map(any)<br>    env_variables  = map(any)<br>    airflow_config = map(any)<br>  })</pre> | n/a | yes |
| subnetwork | The Virtual Private Cloud subnetwork. | `any` | n/a | yes |
| zone | Region where Cloud Composer Environment is created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| airflow\_uri | URI of the Apache Airflow Web UI hosted within the Cloud Composer Environment. |
| composer\_env\_id | ID of Cloud Composer Environment. |
| composer\_env\_name | Name of the Cloud Composer Environment. |
| gcs\_bucket | Google Cloud Storage bucket which hosts DAGs for the Cloud Composer Environment. |
| gke\_cluster | Google Kubernetes Engine cluster used to run the Cloud Composer Environment. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
