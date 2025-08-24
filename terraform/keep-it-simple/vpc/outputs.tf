output "vpc_id" {
  value = module.vpc[0].vpc_id
}

output "dev_vpc_id" {
  value = module.dev-vpc.vpc_id
}