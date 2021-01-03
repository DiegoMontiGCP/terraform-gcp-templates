<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
# Modules

The repository is split into multiple modules, and each can be used independently:
* [Composer](/modules/composer) - Composer Environmnet with options to enable private IP and compatible with VPC SC. 
  - Enable Access Context Manager API and Cloud Composer API. 
  - Use version composer-1.10.4 or later 
  - Enable DAGs serialization in the Airflow database. To do this, add the [core] store_serialized_dags=True and [core] store_dag_code=True configuration override in core section when creating an environment. See DAG serialization for details.
  - Create a new Cloud Composer environment with Private IP enabled. Note that this setting must be configured during environment creation
  
* [emr](/modules/emr) - EMR cluster that Segment can submit jobs to load events into your Data Lake.
* [glue](/modules/glue) - Glue tables that Segment can write metadata to.




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
