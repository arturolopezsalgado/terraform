variable "path" {
  # default = "/home/hola/terraform/credentials"
  default = "C:\\LocalFiles\\git\\GitHub\\terraform\\credentials"
}


terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.54.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "als-gcloud-01"
  region      = "us-central1"
  credentials = file("${var.path}\\sa-terraform-01-als-gcloud-01.json")
}