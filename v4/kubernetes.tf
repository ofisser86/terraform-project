resource "google_project_service" "pet" {
  service = "container.googleapis.com"
}

resource "google_container_cluster" "primary" {
  name               = "petclinic-terraform"
  location           = "us-central1-a"
  initial_node_count = 3
  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.jenkins_sa.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      name = "jenkins"
      app  = "petclinic"
    }
    tags = ["jenkins", "petclinic"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
}
