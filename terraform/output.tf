output vpc-cid {
    value = aws_vpc.myvpc.id 

}
 
 
 output  sub-pub1-cidr  {
    value = aws_subnet.pub_sub1
   
 }
 output  sub-pub2-cidr  {
    value = aws_subnet.pub_sub2
   
 }
 
 output  sub-pri1-cidr  {
    value = aws_subnet.pri_sub1
   
 }
 
 output  sub-pri2-cidr  {
    value = aws_subnet.pri_sub2
   
 }
 
 