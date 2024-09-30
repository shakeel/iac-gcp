terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.4.0"
    }
  }

  # Specify backend for tfstate
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }

  # This is how to specify an already existing Google Cloud Storage bucket for tfstate
  # backend "gcs" {
  #  bucket = "#your-bucket-name"
  #  prefix = "terraform/state"
  # }
}
