resource "aws_security_group" "allow_port" {
  name        = "allow_port"
  description = "Allow port inbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

   ingress {
    description      = "port from VPC"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.myvpc.cidr_block]
    
  }
  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  tags = {
    Name = "allow_port"
  }
}