resource "google_compute_instance" "instance-test" {
  project      = var.project_id
  count        = length(var.name_count)
  name         = "instance-list-${count.index + 1}"
  machine_type = var.machine_type
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # email  = google_service_account.default.email
    # scopes = ["cloud-platform"]
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

