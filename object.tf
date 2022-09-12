resource "google_storage_bucket_object" "picture" {
  name   = "Github-log"
  source = "/github.png"
  bucket = google_storage_bucket.gcs_buckets.name
}
