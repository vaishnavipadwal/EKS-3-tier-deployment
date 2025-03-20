resource "aws_eks_node_group" "workers" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
  instance_types  = ["t3.medium"]
  
  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 3
  }

  ami_type               = "AL2_x86_64"
  disk_size              = 20
  capacity_type          = "ON_DEMAND"
  force_update_version   = false

  remote_access {
    ec2_ssh_key = "your-key-name"  # Update with your actual key pair name
  }

  depends_on = [aws_eks_cluster.eks_cluster]
}
