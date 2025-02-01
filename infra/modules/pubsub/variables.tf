variable "pubsub" {
    type = map(object({
      name = string
      message_retention_duration = string
    }))
}