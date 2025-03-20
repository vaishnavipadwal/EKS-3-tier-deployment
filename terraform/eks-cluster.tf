resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_cluster_name
  version  = "1.27"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
  }
}
