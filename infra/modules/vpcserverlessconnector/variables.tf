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