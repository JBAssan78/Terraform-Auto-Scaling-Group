resource "aws_lb" "app1" {
  name               = "app1"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.app1_load_balancer.id]
  subnets =                       [aws_subnet.public-us-east-2a.id,
                                   aws_subnet.public-us-east-2b.id,
                                   aws_subnet.public-us-east-2c.id
]


  enable_deletion_protection = false

  

  tags = {
    Environment = "app1_load_balancer"
  }
}