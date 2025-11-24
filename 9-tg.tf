resource "aws_lb_target_group" "app1" {
  name        = "app1"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.app1.id

  health_check {
    enabled = true
  }
}