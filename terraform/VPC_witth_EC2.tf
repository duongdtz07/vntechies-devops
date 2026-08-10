# This Terraform configuration creates a basic VPC structure
# for the 'my-vpc-app' based on the console input image.


provider "aws" {
  region = "ap-southeast-1" # Set your desired region
}

resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/24"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "my-vpc-app"
  }
}