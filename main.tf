provider "google" {
credentials = file("credentials.json")
project = "qwiklabs-gcp-01-079ab02b6141"
region = "us-central1"
zone = "us-central1-a"
}

module "vpc_network" {
  source = "vpc.tf"
}
