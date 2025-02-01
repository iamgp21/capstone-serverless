variable "vpc" {
    type = map(object({
      name = string
      auto_create_subnetworks = bool
    }))
}