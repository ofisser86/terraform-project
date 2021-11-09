# Enable services in newly created GCP Project.
resource "google_project_service" "gcp_services" {
  count   = length(var.gcp_service_list)
  service = var.gcp_service_list[count.index]

  disable_dependent_services = true
}
