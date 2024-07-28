provider "google" {
  credentials = base64decode(var.google_credentials)
  project     = var.google_project
  region      = var.google_region
}

variable "google_credentials" {
  description = "Base64 encoded Google Cloud service account key"
}

variable "google_project" {
  description = "Google Cloud project ID"
}

variable "google_region" {
  description = "Google Cloud region"
  default     = "us-central1"  # or your preferred default region
}




