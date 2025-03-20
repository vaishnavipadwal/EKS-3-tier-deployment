resource "aws_eks_node_group" "workers" {
  cluster_name  = aws_eks_cluster.eks_cluster.name
  node_role_arn = aws_iam_role.eks_node.arn
  subnet_ids    = [aws_subnet.private_subnet.id]
  instance_types = [var.instance_type]
  scaling_config {
    desired_size = var.desired_capacity
    min_size     = var.min_size
    max_size     = var.max_size
  }
}
