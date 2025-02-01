resource "google_pubsub_topic" "topic" {
    for_each = var.pubsub
    name = each.value["name"]
    message_retention_duration = each.value["message_retention_duration"]
}