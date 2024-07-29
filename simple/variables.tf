variable "google_credentials" {
  description = "Base64 encoded Google Cloud service account key"
}

variable "google_project" {
  description = "Google Cloud project ID"
}

variable "google_region" {
  description = "Google Cloud region"
  default     = "us-central1" # or your preferred default region
}

variable "auto_create_subnetworks" {
  type = bool

}