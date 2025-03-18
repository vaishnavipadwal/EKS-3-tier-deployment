module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.10.0"

  cluster_name    = "eks-cluster"
  cluster_version = "1.28"
  subnet_ids      = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  enable_irsa = true

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }
}
