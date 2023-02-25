variable "project_id" {
  default = "als-gcloud-01"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "image" {
  default = "debian-cloud/debian-11"
}

variable "name_count" {
  default = ["server1", "server2", "server3"]
}