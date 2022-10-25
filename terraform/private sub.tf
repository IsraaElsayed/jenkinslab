resource "aws_subnet" "pri_sub1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_pri1_cidr
  availability_zone = var.pri1_az
  tags = {
    Name = "pri_sub1"
  }
}
#private subnet 2

resource "aws_subnet" "pri_sub2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_pri2_cidr
  availability_zone = var.pri2_az
  tags = {
    Name = "pri_sub2"
  }
}