resource "aws_subnet" "private-subnet-1" {
  cidr_block = "10.0.3.0/24"
  vpc_id = aws_vpc.myvpc.id
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = false 
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subent-2" {
  cidr_block = "10.0.4.0/24"
  vpc_id = aws_vpc.myvpc.id
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false 
  tags = {
    Name = "private-subnet-2"
  }
}
