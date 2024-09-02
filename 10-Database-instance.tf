resource "aws_db_subnet_group" "database-instance" {
  name = "database-sg"
  subnet_ids = [ aws_subnet.private-subnet-1.id, aws_subnet.private-subent-2.id]
}

resource "aws_db_instance" "database-instance" {
  engine = "mysql"
  username = "prayogdb"
  password = "PrayogDB123"
  instance_class = "db.t3.micro"
  vpc_security_group_ids = [aws_security_group.Database-SG.id]
  db_subnet_group_name = aws_db_subnet_group.database-instance.name 
  allocated_storage = 20
  skip_final_snapshot = true
  availability_zone = "us-east-1a"
  publicly_accessible = true
  tags = {
    name = "RDS-Instance"
  }
}