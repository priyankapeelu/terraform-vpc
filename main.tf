module "vpc" {
  source              = "./vendor/modules/vpc"
  VPC_CIDR            = var.VPC_CIDR
  ENV                 = var.ENV
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
  AZ                  = var.AZ
  DEFAULT_VPC_ID      = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR    = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT      = var.DEFAULT_VPC_RT
}

module "redis" {
  source                     = "./vendor/modules/redis"
  ENV                        = var.ENV
  ELASTICACHE_NODE_TYPE      = var.ELASTICACHE_NODE_TYPE
  ELASTICACHE_NODE_COUNT     = var.ELASTICACHE_NODE_COUNT
  ELASTICACHE_PORT           = var.ELASTICACHE_PORT
  ELASTICACHE_ENGINE_VERSION = var.ELASTICACHE_ENGINE_VERSION
}