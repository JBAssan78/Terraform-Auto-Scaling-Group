# VPC resource
# This creates the virtual private cloud
resource "aws_vpc" "app1" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "demo-vpc"
  }
}