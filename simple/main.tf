provider "google" {
  credentials = base64decode(var.google_credentials)
  project     = var.google_project
  region      = var.google_region
}

resource "google_compute_network" "vpc_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = true
}




