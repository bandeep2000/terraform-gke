provider "google" {
  credentials = "${file("/var/lib/accounts/account.json")}"
  project     = "virtual-metrics-196706"
  region      = "us-central1"
}
