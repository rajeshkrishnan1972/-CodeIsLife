resource "aws_cloudwatch_metric_alarm" "cpu" {
  alarm_name                = "web-cpu-alarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  alarm_actions             = [ "arn:aws:sns:us-east-1:291199257745:CPUUtilization" ]

  ##dimensions { 
  ##  InstanceId = "or2pg"
  ##}
}
