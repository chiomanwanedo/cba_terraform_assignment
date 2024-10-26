resource "aws_internet_gateway" "c_igw" {
  vpc_id = aws_vpc.c_vpc.id
  tags = {
    Name = "c_igw"
  }
}