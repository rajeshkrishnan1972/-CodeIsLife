resource "aws_cloudwatch_event_target" "ec2_target" {
  rule      = "ec2-events"
  arn       = "arn:aws:events:us-east-1:291199257745:rule/ec2-events"
}
