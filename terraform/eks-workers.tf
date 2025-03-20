resource "aws_eks_node_group" "workers" {
  cluster_name  = aws_eks_cluster.eks_cluster.name
  node_role_arn = aws_iam_role.eks_node_role.arn
  subnet_ids    = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]

  scaling_config {
    desired_size = var.desired_capacity
    min_size     = var.min_size
    max_size     = var.max_size
  }

  instance_types = [var.instance_type]

  tags = {
    Name = "eks-worker-nodes"
  }
}
