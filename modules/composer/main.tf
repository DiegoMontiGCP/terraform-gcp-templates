resource "google_composer_environment" "create_composer_env" {
  name    = var.composer_env_name
  project = var.project_id
  region  = var.region

  config {
    node_count = var.node_count

    dynamic "private_environment_config" {
      for_each = var.composer_private_env.private_ip_enabled ? [var.composer_private_env] : []

      content {
        enable_private_endpoint    = private_environment_config.value.private_ip_enabled
        master_ipv4_cidr_block     = private_environment_config.value.master_ipv4_cidr_block
        cloud_sql_ipv4_cidr_block  = private_environment_config.value.cloud_sql_ipv4_cidr_block
        web_server_ipv4_cidr_block = private_environment_config.value.web_server_ipv4_cidr_block
      }
    }

    node_config {
      zone            = var.zone
      disk_size_gb    = var.node_config.disk_size_gb
      machine_type    = var.node_config.machine_type
      network         = var.network
      subnetwork      = var.subnetwork
      service_account = var.composer_service_account
      oauth_scopes    = var.node_config.oauth_scopes

      dynamic "ip_allocation_policy" {
        for_each = var.ip_allocation_settings.enable_ip_aliases ? [var.ip_allocation_settings] : []
        content {
          use_ip_aliases           = ip_allocation_policy.value.enable_ip_aliases
          cluster_ipv4_cidr_block  = ip_allocation_policy.value.cluster_ipv4_cidr_block
          services_ipv4_cidr_block = ip_allocation_policy.value.services_ipv4_cidr_block

        }
      }
    }

    software_config {
      image_version  = var.software_config.image_version
      python_version = var.software_config.python_version
      pypi_packages  = var.software_config.pypi_packages

      env_variables            = var.software_config.env_variables
      airflow_config_overrides = var.software_config.airflow_config
    }
  }

}
