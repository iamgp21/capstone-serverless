resource "google_compute_subnetwork" "subnets" {
    for_each = var.subnets
    name = each.value["name"]
    ip_cidr_range = each.value["ip_cidr_range"]
    region = each.value["region"]
    network = each.value["network"]
    stack_type = each.value["stack_type"]
    private_ip_google_access = each.value["private_ip_google_access"]
}