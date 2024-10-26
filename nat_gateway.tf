resource "aws_nat_gateway" "private_NatGate" {
  connectivity_type = "private"
  subnet_id         = aws_subnet.c_privateSubnet01.id
                      
}