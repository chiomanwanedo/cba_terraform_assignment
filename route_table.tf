resource "aws_route_table" "public_RouteTable" {
  vpc_id = aws_vpc.c_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.c_igw.id
  }

  tags = {
    Name = "public_RouteTable"
  }
}


resource "aws_route_table" "pri_route" {
  vpc_id = aws_vpc.c_vpc.id

route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.c_igw.id
  }

route {
  cidr_block = var.cidr_block[3]
  nat_gateway_id = aws_nat_gateway.private_NatGate.id
  }

  tags = {
    Name = "nat_gateway"
  }
}
  
