resource "aws_security_group" "database_security_group" {
  name        = "database-security-group"
  description = "Security group para permitir acessar RDS"
  vpc_id      = aws_vpc.vpc_prd.id

  // Regra para permitir o tráfego na porta 3306 de qualquer endereço IP
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
}