variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr_1" {
  default = "10.0.2.0/24"
}

variable "private_subnet_cidr_2" {
  default = "10.0.3.0/24"
}

variable "eks_cluster_name" {
  default = "my-eks-cluster"
}

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
