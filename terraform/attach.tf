resource "aws_route_table_association" "attach_1" {
  subnet_id      = aws_subnet.pub_sub1.id
  route_table_id = aws_route_table.pub_route.id
}
resource "aws_route_table_association" "attach_2" {
  subnet_id      = aws_subnet.pub_sub1.id
  route_table_id = aws_route_table.pub_route.id
}

resource "aws_route_table_association" "attach_3" {
  subnet_id      = aws_subnet.pub_sub1.id
  route_table_id = aws_route_table.pub_route.id
}

resource "aws_route_table_association" "attach_4" {
  subnet_id      = aws_subnet.pub_sub1.id
  route_table_id = aws_route_table.pub_route.id
}
