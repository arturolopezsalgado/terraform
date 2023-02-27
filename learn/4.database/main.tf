resource "google_project_service" "project" {
  project = var.project_id
  service = "sqladmin.googleapis.com"

}

resource "google_sql_database" "database" {
  name     = "my-database"
  instance = google_sql_database_instance.gcpdatabase.name
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "gcpdatabase" {
  name             = var.db_name
  region           = var.db_region
  database_version = var.db_version
  settings {
    tier              = var.tier
    disk_size         = var.db_disk_size
    activation_policy = var.db_activation_policy
  }

  deletion_protection = "true"
}

resource "google_sql_user" "db_admin" {
  count    = 1
  name     = var.db_user_name
  host     = var.db_user_host
  password = var.db_user_password
  instance = google_sql_database_instance.gcpdatabase.name

}