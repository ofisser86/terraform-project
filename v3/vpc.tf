# VPC
resource "google_compute_network" "vpc" {
  name                    = "${google_project.k8s-project.project_id}-vpc"
  auto_create_subnetworks = "false"
  project                 = google_project.k8s-project.name

}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${google_project.k8s-project.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
