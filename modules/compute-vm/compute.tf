resource "google_compute_instance" "vm_instance" {
  depends_on = [google_compute_network.vpc_network]
  name         = var.name
  project      = var.project_id
  zone         = var.zone
  labels       = var.labels
  machine_type = var.machine_type
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
