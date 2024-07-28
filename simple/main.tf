/*
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.38.0"
    }
  }
}*/

provider "google" {
  credentials = var.GOOGLE_CREDENTIALS

}
resource "google_compute_network" "vpc_network" {

  name                    = var.vpc_network_name
  auto_create_subnetworks = true
}

variable "GOOGLE_CREDENTIALS" {
  description = "Base64-encoded contents of the service account JSON key file"
  type        = string
}

variable "project" {
  description = "The ID of the GCP project to use"
  type        = string
}

variable "region" {
  description = "The region to create resources in"
  type        = string
}

variable "vpc_network_name" {
  description = "The name of the VPC network to create"
  type        = string
}
