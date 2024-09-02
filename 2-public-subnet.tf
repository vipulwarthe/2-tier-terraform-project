resource "aws_subnet" "public-subent-1" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.myvpc.id 
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true 
  tags = {
    Name = "public-subent-1"
  }
}

resource "aws_subnet" "public-subent-2" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.myvpc.id 
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true 
  tags = {
    Name = "public-subent-2"
  }
}


