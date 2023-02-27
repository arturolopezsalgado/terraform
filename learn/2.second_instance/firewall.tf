resource "google_compute_firewall" "allow_http" {
  project     = var.project_id[var.environment]
  name        = "allow-http"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["0.0.0.0/0"]
  target_tags = ["allow-http"]
}

resource "google_compute_firewall" "allow_https" {
  project     = var.project_id[var.environment]
  name        = "allow-https"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  source_tags = ["0.0.0.0/0"]
  target_tags = ["allow-https"]
}