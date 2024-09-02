resource "aws_instance" "Bastion" {
  ami = "ami-0a0e5d9c7acc336f1"
  instance_type = "t2.micro"
  key_name = "demo"
  subnet_id = aws_subnet.public-subent-1.id 
  vpc_security_group_ids = [ aws_security_group.Bastion-SG.id ]
  associate_public_ip_address = true 
  tags = {
    Name = "Bastion"
  }
}