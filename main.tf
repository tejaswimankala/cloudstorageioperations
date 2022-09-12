resource "random_id" "server" {
  byte_length = 8
}

resource "google_storage_bucket" "gcs_buckets" {
  name          = "lifecyclepolicy-bucket-${random_id.server.hex}"
  location 	  	= "${var.bucket_location}"
  project  	  	= "${var.bucket_project}"
  storage_class	= "${var.bucket_storage_class}"
  force_destroy = true
  uniform_bucket_level_access = true

 
  versioning	{
    enabled = "${var.gcs_versioning_enabled}" 
  }
  
  lifecycle_rule {
    action {
      type = var.type
    }
    condition {
      age = "${var.lifecycle_rule_condition_age}"
      
    }
  }

  


}
