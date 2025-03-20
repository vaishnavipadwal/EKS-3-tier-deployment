resource "aws_security_group" "eks_sg" {
  vpc_id = aws_vpc.eks_vpc.id
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
