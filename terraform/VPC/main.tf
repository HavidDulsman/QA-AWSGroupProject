resource "aws_vpc" "group2-vpc" {
  cidr_block           = var.cidr-block
  enable_dns_hostnames = true
}

resource "aws_subnet" "group2-sub-live" {
  cidr_block = var.sub-live
  vpc_id     = aws_vpc.group2-vpc.id
  map_public_ip_on_launch = true
}

resource "aws_subnet" "group2-sub-test" {
  cidr_block = var.sub-test
  vpc_id     = aws_vpc.group2-vpc.id
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "group2-igw" {
  vpc_id = aws_vpc.group2-vpc.id
}

resource "aws_route_table" "group2-rt" {
  vpc_id = aws_vpc.group2-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.group2-igw.id
  }
}
resource "aws_route_table_association" "group2-live-rta" {
  subnet_id      = aws_subnet.group2-sub-live.id
  route_table_id = aws_route_table.group2-rt.id
} 

resource "aws_route_table_association" "group2-test-rta" {
    subnet_id = aws_subnet.group2-sub-live.id
    route_table_id = aws_route_table.group2-rt.id
}

resource "aws_main_route_table_association" "group2-rt-main" {
  vpc_id         = aws_vpc.group2-vpc.id
  route_table_id = aws_route_table.group2-rt.id
}