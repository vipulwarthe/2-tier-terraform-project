resource "aws_route_table" "private-RT" {
  vpc_id = aws_vpc.myvpc.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT-Gateway.id 
  }
  tags = {
    Name = "private-RT"
  }
}

resource "aws_route_table_association" "private-Rt-1-Association" {
  subnet_id = aws_subnet.private-subnet-1.id 
  route_table_id = aws_route_table.private-RT.id 
}

resource "aws_route_table_association" "private-Rt-2-Assocation" {
  subnet_id = aws_subnet.private-subent-2.id
  route_table_id = aws_route_table.private-RT.id 
}

