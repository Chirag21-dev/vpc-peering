resource "aws_vpc" "primary_vpc" {
  provider             = aws.primary
  cidr_block           = var.primary_vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "Primary-VPC-${var.primary_region}"
    Environment = "Demo"
    Purpose     = "VPC-Peering-Demo"
  }
