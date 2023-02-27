variable "credentials" {
  # default = "/home/hola/terraform/credentials"
  default = "C:\\LocalFiles\\git\\GitHub\\terraform\\credentials"
}

variable "sa_terraform" { default = "sa-terraform-01@als-gcloud-01.iam.gserviceaccount.com"}
variable "project_id" { default = "als-gcloud-01" }
variable "region" { default = "us-central1" }