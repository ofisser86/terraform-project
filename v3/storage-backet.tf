resource "google_storage_bucket" "artifact-storage" {
  name                        = "${google_project.k8s-project.project_id}-artifacts"
  location                    = "US"
  force_destroy               = true
  project                     = google_project.k8s-project.id
  uniform_bucket_level_access = true

  depends_on = [google_project_service.gcp_services]
}
