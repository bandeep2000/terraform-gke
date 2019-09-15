provider "google" {
  credentials = "${file("/var/lib/accounts/account1.json")}"
  project     = "virtual-metrics-196706"
  region      = "us-central1"
}
