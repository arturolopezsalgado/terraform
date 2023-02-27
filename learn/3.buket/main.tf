resource "google_storage_bucket" "bucket" {
  project       = var.project_id
  name          = var.bucket_id
  location      = var.region
  storage_class = "REGIONAL"
  force_destroy = true

  public_access_prevention = "enforced"

  labels = {
    "name"     = "${var.bucket_id}"
    "location" = "${var.region}"
  }
}