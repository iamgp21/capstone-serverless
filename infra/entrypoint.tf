## UNCOMMENT BELOW MODULES TO CREATE THEM BACK:

# module "pubsub" {
#   source = "./modules/pubsub"
#   pubsub = var.pubsub
# }

# module "cloudscheduler" {
#   source = "./modules/cloudscheduler"
#   job    = var.job
#   depends_on = [
#     module.pubsub
#   ]
# }

# module "vpc" {
#   source = "./modules/vpc"
#   vpc = var.vpc
# }

# module "subnets" {
#   source = "./modules/subnets"
#   subnets = var.subnets
#   depends_on = [ 
#     module.vpc 
#   ]
# }

# module "connector" {
#   source = "./modules/vpcserverlessconnector"
#   connector = var.connector
#   depends_on = [ 
#     module.vpc,
#     module.subnets
#    ]
# }