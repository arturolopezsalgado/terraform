resource "google_compute_instance" "instance-test" {
  project = var.project_id[var.environment]
  count   = length(var.name_count)
  name    = "instance-list-${count.index + 1}"
  zone    = "us-central1-a"
  # machine tyoe based on "map"
  # machine_type = var.machine_type[var.environment]

  # machine tyoe based on "if" statement
  machine_type = var.ifenvironment != "production" ? var.ifmachine_dev : var.ifmachine_prd

  can_ip_forward = false
  description    = "This is a virtual machine"

  tags = ["allow-http", "allow-https"] # Firewall rules

  labels = {
    "vm-name"      = "instance-list-${count.index + 1}"
    "machine-type" = "${var.ifenvironment != "production" ? var.ifmachine_dev : var.ifmachine_prd}"
  }

  boot_disk {
    initialize_params {
      image = var.image
      size  = 10
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    "key" = "value"
  }

  metadata_startup_script = "eccho hi > /tst.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    # email  = google_service_account.default.email
    # scopes = ["cloud-platform"]
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

