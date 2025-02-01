pubsub = {
  "topic1" = {
    name                       = "topic1"
    message_retention_duration = "3600s"
  }
}

job = {
  "job1" = {
    name                     = "job1"
    description              = "First Job"
    schedule                 = "0 0 * * *"
    region                   = "asia-south1"
    time_zone                = "Etc/UTC"
    paused                   = true
    pubsub_target_topic_name = "projects/bitlost/topics/topic1"
    pubsub_target_data       = "hello"

  }
}

vpc = {
  "vpc02" = {
    name = "vpc02"
    auto_create_subnetworks = false
  }
}

subnets = {
  "serverless-subnet01" = {
      name = "serverless-subnet01"
      ip_cidr_range = "192.168.30.0/28"
      region = "asia-south1"
      network = "vpc02"
      stack_type = "IPV4_ONLY"
      private_ip_google_access = true
  }
}

connector = {
  "connector01" = {
    name = "connector01"
    machine_type = "e2-micro"
    region = "asia-south1"
    min_instances = "2"
    max_instances = "3"
    subnet_name = "serverless-subnet01"
  }
}