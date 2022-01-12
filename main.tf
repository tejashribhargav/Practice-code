terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
  project     = "sample-project-a-333711"
  region      = "us-central1"
  zone        = "us-central1-c"
}
resource "google_compute_network" "vpc_network1" {
  name = "terraform-network2"
}
