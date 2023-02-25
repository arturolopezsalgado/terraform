variable "environment" {
  default = "dev"
}

variable "project_id" {
  type = map(string)
  default = {
    "dev" = "als-gcloud-01"
    "qas" = "als-gcloud-01"
    "prd" = "als-gcloud-01"
  }
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  type = map(string)
  default = {
    "dev" = "e2-micro"
    "qas" = "e2-micro"
    "prd" = "e2-micro"
  }
}

variable "image" {
  default = "debian-cloud/debian-11"
}

variable "name_count" {
  default = ["server1", "server2", "server3"]
}