variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "composer_env_name" {
  type = string
}

variable "node_count" {
  type = string
}

variable "composer_private_env" {
  type = object({
    enabled                = bool
    master_ipv4_cidr_block = string
  })
}

variable "node_config" {
  type = object({
    disk_size_gb      = number
    machine_type      = string
    enable_ip_aliases = bool
  })
}

variable "network" {
  type = any
}
variable "subnetwork" {
  type = any
}
variable "service_account" {
  type = any
}

variable "software_config" {
  type = object({
    image_version  = string
    python_version = string
    pypi_packages  = map(any)
    env_variables  = map(any)
    airflow_config = map(any)
  })

}

variable "test_required" {
  type = string
}

variable "test_second" {
  type = string
}
