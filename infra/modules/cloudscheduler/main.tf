resource "google_cloud_scheduler_job" "schedulerjob" {

    for_each = var.job
    name = each.value["name"]
    description = each.value["description"]
    schedule = each.value["schedule"]
    region = each.value["region"]
    time_zone = each.value["time_zone"]
    paused = each.value["paused"]
    
    pubsub_target {
      topic_name = each.value["pubsub_target_topic_name"]
      data = base64encode(each.value["pubsub_target_data"])
    }
  
}