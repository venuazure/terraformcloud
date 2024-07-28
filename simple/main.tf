data "google_credentials" "default" {
  json_key_base64 = var.google_credentials
}

provider "google" {
  credentials = data.google_credentials.default.json_key_base64
  project     = data.google_credentials.default.project_id
}

