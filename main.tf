terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
  project     = "qwiklabs-gcp-03-6c41176baafb"
  region      = "us-central1"
  zone        = "us-central1-c"
}
resource "google_compute_network" "vpc_network1" {
  name = "terraform-network2"
}
