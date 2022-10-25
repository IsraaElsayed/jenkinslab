resource "aws_nat_gateway" "gw_nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pri_sub1.id

  tags = {
    Name = "gw_nat"
  }

  
}