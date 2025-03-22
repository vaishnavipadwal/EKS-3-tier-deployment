# AWS Region
variable "aws_region" {
  default = "us-east-1"
}

# VPC Configuration
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

# Subnets
variable "public_subnet_1_cidr" {
  default = "10.0.1.0/24"
}
variable "public_subnet_2_cidr" {
  default = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  default = "10.0.3.0/24"
}
variable "private_subnet_2_cidr" {
  default = "10.0.4.0/24"
}

# EKS Cluster
variable "eks_cluster_name" {
  default = "my-eks-cluster"
}

# Node Group Configuration
variable "instance_type" {
  default = "t3.medium"
}
variable "desired_capacity" {
  default = 2
}
variable "min_size" {
  default = 1
}
variable "max_size" {
  default = 3
}
