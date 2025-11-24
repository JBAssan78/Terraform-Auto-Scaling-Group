resource "aws_alb_listener" "app1" {
  load_balancer_arn = aws_lb.app1.arn
  port = "80" 
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn =  aws_lb_target_group.app1.arn
  }

}