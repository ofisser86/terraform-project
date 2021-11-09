resource "google_service_account" "jenkins_sa" {
  account_id   = "jenkins-sa-${random_integer.int.result}"
  display_name = "Jenkins SA"
  project      = google_project.k8s-project.id
}

resource "google_service_account_iam_binding" "container-admin" {
  service_account_id = google_service_account.jenkins_sa.name
  role               = "roles/containeranalysis.admin"

  members = [
    "ServiceAccount:${google_service_account.jenkins_sa.email}",
  ]
}

resource "google_service_account_iam_binding" "storage-object-admin" {
  service_account_id = google_service_account.jenkins_sa.name
  role               = "roles/storage.admin"

  members = [
    "ServiceAccount:${google_service_account.jenkins_sa.email}",
  ]
}
