resource "google_project" "k8s-project" {
  name            = var.project_name
  project_id      = "${var.project_name}-${random_integer.int.result}"
  billing_account = var.billing_account
  # org_id              = local.org_id
}
