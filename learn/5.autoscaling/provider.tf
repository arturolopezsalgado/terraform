terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.55.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.project_id
  region      = var.region
  credentials = file("${var.credentials}\\sa-terraform-01-als-gcloud-01.json")
}