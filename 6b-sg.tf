
resource "aws_security_group" "app1_load_balancer" {
  name        = "app1_load_balancer"
  description = "Allow TLS inbound traffic and aand outbound traffic"
  vpc_id      = aws_vpc.app1.id

  tags = {
    Name = "app1_load_balancer"
  }
}

resource "aws_vpc_security_group_ingress_rule" "app1_load_balancer_allow_http" {
  security_group_id = aws_security_group.app1_load_balancer.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}


resource "aws_vpc_security_group_egress_rule" "app1_load_balancer_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.app1_load_balancer.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}