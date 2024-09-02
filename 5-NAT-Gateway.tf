resource "aws_eip" "EIP" {
  domain = "vpc"
}

resource "aws_nat_gateway" "NAT-Gateway" {
  allocation_id = aws_eip.EIP.id
  subnet_id = aws_subnet.public-subent-1.id
  connectivity_type = "public"
  tags = {
    Name = "NAT-Gateway"
  }
}

