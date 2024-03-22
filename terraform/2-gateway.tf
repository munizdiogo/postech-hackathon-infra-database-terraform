resource "aws_internet_gateway" "gateway_postech" {
  vpc_id = aws_vpc.vpc_prd.id
}