
# Creating the VPC

resource "aws_vpc" "vpc1" {
  cidr_block       = "172.120.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "splunk-vpc"
    Team = "Devops"
    env  = var.ENVIRONMENT
  }
}

