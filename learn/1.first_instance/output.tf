output "project_id" {
  value = "google_compute_instance.instance-test.project"
}

output "instance_name" {
  value = "google_compute_instance.instance-test.name"
}

output "zone" {
  value = "google_compute_instance.instance-test.zone"
}

output "instance_id" {
  value = join(",", google_compute_instance.instance-test.*.id)
}