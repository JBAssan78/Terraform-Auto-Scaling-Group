resource "aws_autoscaling_group" "app1" {
  vpc_zone_identifier = [aws_subnet.private-us-east-2a.id,
                         aws_subnet.private-us-east-2b.id,
                         aws_subnet.private-us-east-2c.id]
  #desired_capacity   = 1
  max_size           = 5
  min_size           = 3
  default_cooldown   = 60
  default_instance_warmup = 60
  health_check_grace_period = 120
  health_check_type = "ELB"

  force_delete = true

  target_group_arns = [aws_lb_target_group.app1.arn]

  launch_template {
    id      = aws_launch_template.app1.id
    version = "$Latest"
  }

  tag {
    key = "Name"
    value = "app1"
    propagate_at_launch = true
  }
}