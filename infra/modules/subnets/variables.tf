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