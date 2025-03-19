resource "aws_cloudwatch_log_group" "eks_logs" {
  name              = "/aws/eks/my-eks-cluster/logs"
  retention_in_days = 30
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization_high" {
  alarm_name          = "HighCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace          = "AWS/EKS"
  period             = 60
  statistic          = "Average"
  threshold          = 80
  alarm_description  = "This metric monitors high CPU utilization"
  actions_enabled    = true
  alarm_actions      = []
}