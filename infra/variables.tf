variable "pubsub" {
  type = map(object({
    name                       = string
    message_retention_duration = string
  }))
}

variable "job" {
    type = map(object({
      name = string
      description = string
      schedule = string
      region = string
      time_zone = string
      paused = bool
      pubsub_target_topic_name = string
      pubsub_target_data = string
    }))
  
}
variable "vpc" {
    type = map(object({
      name = string
      auto_create_subnetworks = bool
    }))
}

variable "subnets" {
    type = map(object({
      name = string
      ip_cidr_range = string
      region = string
      network = string
      stack_type = string
      private_ip_google_access = bool
    }))
}

variable "connector" {
    type = map(object({
      name = string
      machine_type = string
      region = string
      min_instances = string
      max_instances = string
      subnet_name = string
    }))
  
}