resource "aws_subnet" "pub_sub1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_pub1_cidr
  availability_zone = var.pub1_az
  tags = {
    Name = "pub_sub1"
  }
}
#public subnet 2

resource "aws_subnet" "pub_sub2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_pub2_cidr
  availability_zone = var.pub2_az
  tags = {
    Name = "pub_sub2"
  }
}
