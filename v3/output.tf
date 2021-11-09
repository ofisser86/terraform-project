output "service_accaunt_acc_id" {
  value = google_service_account.jenkins_sa.account_id
}

output "service_accaunt_id" {
  value = google_service_account.jenkins_sa.id
}

output "service_accaunt_name" {
  value = google_service_account.jenkins_sa.display_name
}
