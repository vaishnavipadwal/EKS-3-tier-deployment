resource "aws_iam_policy" "cloudwatch_logging" {
  name        = "EKSCloudWatchLoggingPolicy"
  description = "Allows EKS to push logs to CloudWatch"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:DescribeLogGroups",
          "logs:DescribeLogStreams",
          "logs:PutLogEvents"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks_cloudwatch_attach" {
  policy_arn = aws_iam_policy.cloudwatch_logging.arn
  role       = aws_iam_role.eks_cluster_role.name
}
