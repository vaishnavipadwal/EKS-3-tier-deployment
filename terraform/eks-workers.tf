resource "aws_eks_node_group" "workers" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "eks-worker-group"
  node_role_arn   = aws_iam_role.eks_worker_role.arn  # Ensure this reference is correct
  subnet_ids      = aws_subnet.private_subnets[*].id
  instance_types  = ["t3.medium"]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
