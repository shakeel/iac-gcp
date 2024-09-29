module "gcs-static-website-bucket" {
  source = "./modules/gcs-static-website-bucket"

  name       = var.bucket_name
  project_id = var.project_id
  location   = "us-east1"

  lifecycle_rules = [{
    action = {
      type = "Delete"
    }
    condition = {
      age        = 365
      with_state = "ANY"
    }
  }]
}

module "compute-vm" {
  source = "./modules/compute-vm"

  name       = "web-dev-vm"
  project_id = var.project_id
  labels     = { owner : "shakeel" }
}