resource "google_vpc_access_connector" "connector" {
    
    for_each = var.connector
    name = each.value["name"]
    machine_type = each.value["machine_type"]
    region = each.value["region"]
    min_instances = each.value["min_instances"]
    max_instances = each.value["max_instances"]
    subnet {
      name = each.value["subnet_name"]
    }
}