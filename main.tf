terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
  project = "qwiklabs-gcp-00-4f0a11e136f7"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = "credentials.json"
}
resource "google_compute_network" "vpc_network1" {
  name = "terraform-network1"
}
