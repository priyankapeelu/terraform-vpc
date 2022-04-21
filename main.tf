module "vpc" {
  source = "./vendor/modules/vpc"
  PC_CIDR = var.VPC_CIDR
}