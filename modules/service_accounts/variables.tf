variable "project_id" {
  type = string
}

variable "service_accounts" {
  type = any
}

variable "service_account_default" {
  type = object({
    account_id   = string
    display_name = string
    description  = string
  })

  default = {
    account_id   = null
    display_name = null
    description  = false
  }
}
