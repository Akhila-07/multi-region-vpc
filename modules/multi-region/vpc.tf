locals {
  vpc_cidr_block                    = var.input_vpc_cidr_block
  public_subnet_1_cidr              = var.input_public_subnet_1_cidr
  public_subnet_2_cidr              = var.input_public_subnet_2_cidr
  availability_zone_1a              = var.input_availability_zone_1a
  availability_zone_1b              = var.input_availability_zone_1b
  application_private_subnet_1_cidr = var.input_application_private_subnet_1_cidr
  application_private_subnet_2_cidr = var.input_application_private_subnet_2_cidr
  database_private_subnet_1_cidr    = var.input_database_private_subnet_1_cidr
  database_private_subnet_2_cidr    = var.input_database_private_subnet_2_cidr
  vpc_name                          = var.input_vpc_name
  public_subnet_1_name              = var.input_public_subnet_1_name
  public_subnet_2_name              = var.input_public_subnet_2_name
  application_private_subnet_1_name = var.input_application_private_subnet_1_name
  application_private_subnet_2_name = var.input_application_private_subnet_2_name
  database_private_subnet_1_name    = var.input_database_private_subnet_1_name
  database_private_subnet_2_name    = var.input_database_private_subnet_2_name
  igw_name                          = var.input_igw_name
  public_rt_name                    = var.input_public_rt_name
}

# 1. VPC
resource "aws_vpc" "devops-vpc" {
  cidr_block           = local.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "devops-vpc"
  }
}

## 2. Create Subnets

# # ## public subnets

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.devops-vpc.id
  map_public_ip_on_launch = true
  cidr_block              = local.public_subnet_1_cidr
  availability_zone       = local.availability_zone_1a

  tags = {
    Name = local.public_subnet_1_name
  }
}
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.devops-vpc.id
  map_public_ip_on_launch = true
  cidr_block              = local.public_subnet_2_cidr
  availability_zone       = local.availability_zone_1b

  tags = {
    Name = local.public_subnet_2_name
  }
}


# ## private subnets

resource "aws_subnet" "application-private-1" {
  vpc_id                  = aws_vpc.devops-vpc.id
  map_public_ip_on_launch = false
  cidr_block              = local.application_private_subnet_1_cidr
  availability_zone       = local.availability_zone_1a

  tags = {
    Name = local.application_private_subnet_1_name
  }
}
resource "aws_subnet" "application-private-2" {
  vpc_id                  = aws_vpc.devops-vpc.id
  map_public_ip_on_launch = false
  cidr_block              = local.application_private_subnet_2_cidr
  availability_zone       = local.availability_zone_1b

  tags = {
    Name = local.application_private_subnet_2_name
  }
}

resource "aws_subnet" "database-private-1" {
  vpc_id                  = aws_vpc.devops-vpc.id
  map_public_ip_on_launch = false
  cidr_block              = local.database_private_subnet_1_cidr
  availability_zone       = local.availability_zone_1a

  tags = {
    Name = local.database_private_subnet_1_name
  }
}

resource "aws_subnet" "database-private-2" {
  vpc_id                  = aws_vpc.devops-vpc.id
  map_public_ip_on_launch = false
  cidr_block              = local.database_private_subnet_2_cidr
  availability_zone       = local.availability_zone_1b

  tags = {
    Name = local.database_private_subnet_2_name
  }
}

# ## IGW
resource "aws_internet_gateway" "devops-igw" {
  vpc_id = aws_vpc.devops-vpc.id

  tags = {
    Name = local.igw_name
  }
}

# # ## Route table

resource "aws_route_table" "devops-public-rt" {
  vpc_id = aws_vpc.devops-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.devops-igw.id
  }

  tags = {
    Name = local.public_rt_name
  }
}

resource "aws_route_table_association" "public-association-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.devops-public-rt.id
}

resource "aws_route_table_association" "public-association-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.devops-public-rt.id
}

