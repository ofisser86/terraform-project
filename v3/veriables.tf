variable "billing_account" {
  description = "GCP billing_account."
  type        = string
}
variable "project_name" {
  description = "GCP Project name."
  type        = string
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the project."
  type        = map(any)
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list(any)
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-central1"
}

