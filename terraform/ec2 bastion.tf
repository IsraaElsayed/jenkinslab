
  data "aws_ami" "ubuntu" {
    most_recent = true
 
    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
 
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
 
    filter {
        name   = "architecture"
        values = ["x86_64"]
    }
 
    
}
resource "aws_instance" "bastion" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.pub_sub2.id
  associate_public_ip_address = true
  availability_zone = var.pub2_az
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  #provisioner "local-exec" {
   # command = "echo ${self.public_ip} > bastion_ip.txt" 
  
  #}
  tags = {
    Name = "jenkins-ec2"
  }

  }