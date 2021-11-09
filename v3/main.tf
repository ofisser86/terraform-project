# provider "google" {
#   project = "k8s-staging-773020"
#   region  = "us-central1"
# }

# resource "google_service_account" "default" {
#   account_id   = "terraform"
#   display_name = "Service Account"
# }

# resource "google_compute_instance" "default" {
#   name         = "test"
#   machine_type = "e2-micro"
#   zone         = "us-central1-c"

#   tags = ["foo", "bar"]

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-10"
#     }
#   }

#   // Local SSD disk
#   #   scratch_disk {
#   #     interface = "SCSI"
#   #   }

#   network_interface {
#     network = "default"

#     access_config {
#       // Ephemeral public IP
#     }
#   }

#   metadata = {
#     foo = "bar"
#   }

#   metadata_startup_script = "echo hi > /test.txt"

#   service_account {
#     # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
#     email  = google_service_account.default.email
#     scopes = ["cloud-platform"]
#   }
# }
