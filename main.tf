terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  //credentials = var.credentials
}

resource "google_compute_network" "vpc_network1" {
  name = "terraform-network2"
}