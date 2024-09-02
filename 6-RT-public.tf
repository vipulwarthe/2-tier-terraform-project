resource "aws_route_table" "Public-RT" {
  vpc_id = aws_vpc.myvpc.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id 
  }
  tags = {
    Name = "Public-RT"
  }
}

resource "aws_route_table_association" "Public-1-association" {
  subnet_id = aws_subnet.public-subent-1.id
  route_table_id = aws_route_table.Public-RT.id 
}

resource "aws_route_table_association" "Public-2-association" {
  subnet_id = aws_subnet.public-subent-2.id 
  route_table_id = aws_route_table.Public-RT.id 
}

