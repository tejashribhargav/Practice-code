provider "google" {
credentials = file("credentials.json")
project = "myproject"
region = "us-central1"
zone = "us-central1-c"
}

resource "google_compute_instance" "vm1" {
name = "demo_vm"
machine_type = "f1-micro"

boot_disk {
initialize_params {
image = "debian-cloud/debian-9"
}
}

network_interface {
network = "default"
access_config {}
}
}

resource "google_storage_bucket" "test_bucket" {
  name  = "my-bucket"
}