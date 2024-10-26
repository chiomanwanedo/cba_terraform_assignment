resource "aws_route_table_association" "publicS1" {
  subnet_id  = aws_subnet.c_publicSubnet01.id
  route_table_id = aws_route_table.public_RouteTable.id
}

resource "aws_route_table_association" "publicS2" {
  subnet_id  = aws_subnet.c_publicSubnet02.id
  route_table_id = aws_route_table.public_RouteTable.id
}


resource "aws_route_table_association" "privateS1" {
  subnet_id  = aws_subnet.c_privateSubnet01.id
  route_table_id = aws_route_table.pri_route.id
}

resource "aws_route_table_association" "privateS2" {
  subnet_id  = aws_subnet.c_privateSubnet01.id
  route_table_id = aws_route_table.pri_route.id
}

