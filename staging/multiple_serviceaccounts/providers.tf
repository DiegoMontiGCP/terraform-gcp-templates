terraform {
  backend "gcs" {
    bucket = "terraform-cicd-storage"
    prefix = "google-cloud-function-with-terraform-example"
  }

  required_providers {
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 4.44.1"
    }
  }
}