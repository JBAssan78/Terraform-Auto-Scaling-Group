resource "aws_autoscaling_policy" "app1" {
  name = "app1-scaler"
  autoscaling_group_name = aws_autoscaling_group.app1.name
  policy_type = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 40
  }
}