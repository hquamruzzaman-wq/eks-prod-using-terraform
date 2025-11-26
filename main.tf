# VPC module
module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  azs      = var.azs
}

# EKS module
module "eks" {
  source                    = "./modules/eks"
  cluster_name              = var.cluster_name
  cluster_version           = var.cluster_version
  vpc_id                    = module.vpc.vpc_id
  private_subnet_ids        = module.vpc.private_subnet_ids
  public_subnet_ids         = module.vpc.public_subnet_ids
  node_group_instance_types = var.node_group_instance_types
  node_group_min_size       = var.node_group_min_size
  node_group_max_size       = var.node_group_max_size
  node_group_desired_size   = var.node_group_desired_size
}

# Example: IRSA role for AWS Load Balancer Controller
module "alb_irsa" {
  source                    = "./modules/iam-irsa"
  role_name_prefix          = "${var.cluster_name}-alb-controller"
  cluster_oidc_provider_arn = module.eks.oidc_provider_arn
  namespace                 = "kube-system"
  service_account_name      = "aws-load-balancer-controller"
  policy_arn                = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
}
