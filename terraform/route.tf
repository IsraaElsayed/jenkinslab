resource "aws_route_table" "pub_route" {
vpc_id = aws_vpc.myvpc.id


tags = {
Name = "pub_route"
}
}

resource "aws_route_table" "priv_route" {
vpc_id = aws_vpc.myvpc.id


tags = {
Name = "priv_route"
}
}

resource "aws_route" "pub_route" {
  route_table_id            = aws_route_table.pub_route.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
  
}
resource "aws_route" "priv_route" {
  route_table_id            = aws_route_table.priv_route.id 
  destination_cidr_block    = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.gw_nat.id
}
