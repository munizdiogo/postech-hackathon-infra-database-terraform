resource "aws_route" "route_to_igw" {
  route_table_id = aws_vpc.vpc_prd.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.gateway_postech.id
}