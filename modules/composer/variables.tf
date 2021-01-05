variable "project_id" {
  description = "Project ID where Cloud Composer Environment is created."
  type        = string
}

variable "region" {
  description = "Region where Cloud Composer Environment is created."
  type        = string
}

variable "zone" {
  description = "Region where Cloud Composer Environment is created."
  type        = string
}

variable "composer_env_name" {
  description = "Name of Cloud Composer Environment."
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the GKE cluster that will be used to run the composer environment "
  type        = number
  default     = 3
}

variable "composer_private_env" {
  description = "Enabled and Configure Private IP Composer Environment"
  type = object({
    private_ip_enabled         = bool
    master_ipv4_cidr_block     = string
    cloud_sql_ipv4_cidr_block  = string
    web_server_ipv4_cidr_block = string
  })

  default = {
    private_ip_enabled         = false
    master_ipv4_cidr_block     = null
    cloud_sql_ipv4_cidr_block  = null
    web_server_ipv4_cidr_block = null
  }
}

variable "node_config" {
  description = "Configure the node."
  type = object({
    disk_size_gb = number
    machine_type = string
    oauth_scopes = list(string)
  })

  default = {
    disk_size_gb = 100
    machine_type = "n1-standard-1"
    oauth_scopes = null
  }
}

variable "ip_allocation_settings" {
  description = "IP allocation policy and optionally enable VPC Native GKE cluster in your envrionment"
  type = object({
    enable_ip_aliases        = bool
    cluster_ipv4_cidr_block  = string
    services_ipv4_cidr_block = string
  })

  default = {
    enable_ip_aliases        = false
    cluster_ipv4_cidr_block  = null
    services_ipv4_cidr_block = null
  }
}


variable "network" {
  description = "The Virtual Private Cloud Network."
  type        = any
}

variable "subnetwork" {
  description = "The Virtual Private Cloud subnetwork."
  type        = any
}

variable "composer_service_account" {
  description = "Service Account to be used for running Composer Environment."
  type        = any
  default     = null
}

variable "software_config" {
  description = "Composer software configuration."
  type = object({
    image_version  = string
    python_version = string
    pypi_packages  = map(any)
    env_variables  = map(any)
    airflow_config = map(any)
  })
  default = {
    image_version  = null
    python_version = null
    pypi_packages  = {}
    env_variables  = {}
    airflow_config = {}
  }

}
