resource "google_storage_bucket" "artifact-storage" {
  name                        = "${var.project_id}-artifacts"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "jenkins-data" {
  name                        = "jenkins-data"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
}
