variable "project_id" {
  description = "The ID of the project where subnets will be created"
}

variable "network_name" {
  description = "The name of the network where subnets will be created"
}

variable "subnets" {
  description = "The list of subnets being created"
  type        = list(map(object({
    subnet_name = string
    subnet_ip   = string
    subnet_region = string
    private_ip_google_access = bool
    description             = string 
  })))
  
}

