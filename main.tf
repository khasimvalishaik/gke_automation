terraform {
  cloud {
    organization = "tf-khasim-gke-org"
    hostname     = "app.terraform.io"

    workspaces {
      tags = ["tf_gke_dev"]
    }
  }
}


provider "google" {
  project = "stunning-base-409811"
  region  = "us-central1"
  zone    = "us-central1-c"
}
resource "google_storage_bucket" "my-storage" {
  name          = "tt-demo-bucket"
  project       = "stunning-base-409811"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}