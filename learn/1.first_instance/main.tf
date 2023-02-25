resource "google_compute_instance" "instance-test" {
  project      = "als-gcloud-01"
  name         = "instance-test"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
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