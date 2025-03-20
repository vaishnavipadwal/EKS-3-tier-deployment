output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "subnet_1_id" {
  value = aws_subnet.private_subnet_1.id
}

output "subnet_2_id" {
  value = aws_subnet.private_subnet_2.id
}

output "eks_cluster_id" {
  value = aws_eks_cluster.eks_cluster.id
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}
