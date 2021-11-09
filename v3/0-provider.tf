provider "google" {
  region          = var.region
  request_timeout = "5m"
}

resource "random_integer" "int" {
  min = 100
  max = 1000000
}
