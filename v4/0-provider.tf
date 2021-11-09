provider "google" {
  region = var.region
}

resource "random_integer" "int" {
  min = 100
  max = 1000000
}