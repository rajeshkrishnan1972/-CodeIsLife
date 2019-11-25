resource "aws_cloudwatch_event_rule" "ec2_events" {
  name        = "ec2-events"

  event_pattern = <<PATTERN
{ 
  "source": [
    "aws.ec2"
  ]
}
PATTERN
} 
