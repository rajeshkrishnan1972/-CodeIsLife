resource "aws_cloudwatch_metric_alarm" "health" {
  alarm_name                = "web-health-alarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "StatusCheckFailed"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "This metric monitors ec2 health status"
  alarm_actions             = [ "arn:aws:sns:us-east-1:291199257745:web-health-alarm" ]

  ##dimensions {
  ##  InstanceId = "${aws_instance.web.id}"
  ##}
} 
