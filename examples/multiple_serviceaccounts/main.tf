
terraform {


  backend "gcs" {
    bucket = "datatonic-devops-play-tfstate"
    prefix = "terraform-template/state"
  }


}

module "multiple_serviceAccounts" {
  source           = "../../modules/service_accounts"
  project_id       = var.project_id
  service_accounts = var.service_accounts
  # insert the 2 required variables here
}
