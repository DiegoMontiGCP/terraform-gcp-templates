output "bucket_names" {
  description = "Bucket names."
  value = { for key, bucket in google_storage_bucket.buckets :
    key => bucket.name
  }
}

output "bucket_full_details" {
  description = "Full bucket details."
  value = { for key, bucket in google_storage_bucket.buckets :
    key => bucket
  }
}
