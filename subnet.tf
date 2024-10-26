resource "aws_subnet" "c_publicSubnet01" {
  vpc_id     = aws_vpc.c_vpc.id
  cidr_block = var.cidr_block[0]
  availability_zone = var.availability_zone[0]
  map_public_ip_on_launch = true
    tags = {
    Name = "c_publicSubnet01"
  }
}

resource "aws_subnet" "c_publicSubnet02" {
  vpc_id     = aws_vpc.c_vpc.id
  cidr_block = var.cidr_block[1]
  availability_zone = var.availability_zone[1]
  map_public_ip_on_launch = true
    tags = {
    Name = "c_publicSubnet02"
  }
}


resource "aws_subnet" "c_privateSubnet01" {
  vpc_id     = aws_vpc.c_vpc.id
  cidr_block = var.cidr_block[2]
  availability_zone = var.availability_zone[0]
  map_public_ip_on_launch = false
    tags = {
    Name = "c_privateSubnet01"
  }
}


resource "aws_subnet" "c_privateSubnet02" {
  vpc_id     = aws_vpc.c_vpc.id
  cidr_block = var.cidr_block[3]
  availability_zone = var.availability_zone[1]
  map_public_ip_on_launch = false
    tags = {
    Name = "c_privateSubnet02"
  }
}