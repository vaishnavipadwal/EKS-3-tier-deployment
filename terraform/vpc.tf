resource "aws_vpc" "eks_vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = var.subnet_cidrs[0]
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = var.subnet_cidrs[1]
  availability_zone = "us-east-1b"
}
