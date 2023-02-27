variable "project_id" { default = "als-gcloud-01" }

variable "tier" { default = "db-f1-micro" }
variable "db_name" { default = "gcpdatabase" }
variable "db_region" { default = "us-central1" }
variable "db_disk_size" { default = "20" }
variable "db_version" { default = "MYSQL_8_0" }
variable "db_user_host" { default = "%" }
variable "db_user_name" { default = "admin" }
variable "db_user_password" { default = "123456" }
variable "db_replication_type" { default = "SYNCHRONOUS" }
variable "db_activation_policy" { default = "always" }