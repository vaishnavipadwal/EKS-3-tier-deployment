resource "aws_vpc" "eks_vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.eks_vpc.id
  cidr_block = var.public_subnet_cidr
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.eks_vpc.id
  cidr_block = var.private_subnet_cidr
  availability_zone = "us-east-1b"
}
