provider "google" {
  credentials = "${file("account.json")}"
  project     = "virtual-metrics-196706"
  region      = "us-central1"
}
