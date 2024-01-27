resource "aws_vpc" "public-vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
}

resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.public-vpc.id
  cidr_block = var.subnet_cidr_block
  availability_zone = var.subnet_availability_zone
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.public-vpc.id
}

resource "aws_route_table" "default-routes" {
  vpc_id = aws_vpc.public-vpc.id
  route {
    cidr_block = var.route_table_cidr_block
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "route-associations" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.default-routes.id
}


