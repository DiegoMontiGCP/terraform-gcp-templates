# Terraform Template

[![Maintained by Gruntwork.io](https://img.shields.io/badge/maintained%20by-gruntwork.io-%235849a6.svg)](https://gruntwork.io/?ref=repo_google_network)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/gruntwork-io/terraform-google-network.svg?label=latest)](https://github.com/gruntwork-io/terraform-google-network/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.13.0-blue.svg)

Modules
The repository is split into multiple modules, and each can be used independently:


Composer - Composer Environmnet with options to enable private IP and compatible with VPC SC.

Enable Access Context Manager API and Cloud Composer API.
Use version composer-1.10.4 or later
Enable DAGs serialization in the Airflow database. To do this, add the [core] store_serialized_dags=True and [core] store_dag_code=True configuration override in core section when creating an environment. See DAG serialization for details.
Create a new Cloud Composer environment with Private IP enabled. Note that this setting must be configured during environment creation



emr - EMR cluster that Segment can submit jobs to load events into your Data Lake.


glue - Glue tables that Segment can write metadata to.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.3 |
| google | ~> 3.31 |
| google-beta | ~> 3.31 |

## Providers

No provider.

## Inputs

No input.

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
