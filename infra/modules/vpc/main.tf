resource "google_compute_network" "vpc_network" {
  for_each = var.vpc
  name = each.value["name"]
  auto_create_subnetworks = each.value["auto_create_subnetworks"]
}