#1 for the ASG's EC2 instances 
# 3 rules 2 coming in , 1 going out

resource "aws_security_group" "app1" {
  name        = "app1"
  description = "Allow TLS inbound traffic and aand outbound traffic"
  vpc_id      = aws_vpc.app1.id

  tags = {
    Name = "app1"
  }
}

resource "aws_vpc_security_group_ingress_rule" "app1_allow_http" {
  security_group_id = aws_security_group.app1.id
  referenced_security_group_id = aws_security_group.app1_load_balancer.id
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "app1_allow_ssh" {
  security_group_id = aws_security_group.app1.id
  cidr_ipv4   = aws_vpc.app1.cidr_block
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_egress_rule" "app1_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.app1.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}