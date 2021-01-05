output "serviceaccount_ids" {
  description = "service account ids."
  value = { for key, sa in google_service_account.service_account :
    key => sa.id
  }
}

output "serviceaccount_full_details" {
  description = "Full service account details."
  value = { for key, sa in google_service_account.service_account :
    key => sa
  }
}
