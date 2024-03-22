resource "aws_instance" "webserver" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet_a.id
}


resource "aws_db_instance" "banco_de_dados" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "8.0.28"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "PostechHacka123"
  skip_final_snapshot = true
  db_subnet_group_name = aws_db_subnet_group.dbpostech_subnet.id

  publicly_accessible = true # Permitir acesso público
  vpc_security_group_ids = [aws_security_group.database_security_group.id]

  identifier = "dbhacka"
}



resource "aws_db_subnet_group" "dbpostech_subnet" {
  name = "dbpostech_subnet"
  subnet_ids = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]
}
