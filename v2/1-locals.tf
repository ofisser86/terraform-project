locals {
  region = "us-west2"
  billing_account      = ""
  service_project_name = "k8s-staging"
  service_project_id   = "${local.service_project_name}-${random_integer.int.result}"
  projects_api         = ["container.googleapis.com", "staorage.googleapis.com"]
  secondary_ip_ranges = {
    "pod-ip-range"      = "10.0.0.0/14",
    "services-ip-range" = "10.4.0.0/19"
  }
}