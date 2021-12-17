provider "google" {
credentials = file("credentials.json")
project = "qwiklabs-gcp-01-079ab02b6141"
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

resource "google_compute_network" "vpc_network" {
  name = "demo_vpc"
}
