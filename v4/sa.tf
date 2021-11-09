resource "google_service_account" "jenkins_sa" {
  account_id   = "jenkins-sa-${random_integer.int.result}"
  display_name = "Jenkins SA"
}
