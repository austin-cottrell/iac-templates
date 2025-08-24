module "vpc" {
  count   = var.production ? 1 : 0
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "${var.company_name}-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets = ["10.0.1.0/22", "10.0.4.0/22", "10.0.8.0/22"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway     = true
  one_nat_gateway_per_az = true

  tags = {
    Terraform   = "true"
    Environment = "production"
    Region      = var.region
    Owner       = var.company_name
  }
}

module "dev-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "${var.company_name}-vpc"
  cidr = "172.16.0.0/16"

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["172.16.1.0/22", "172.16.4.0/22"]
  public_subnets  = ["172.16.101.0/24", "172.16.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Region      = var.region
    Owner       = var.company_name
  }
}