resource "aws_instance" "web" {
  ami = "ami-0f3c7d07486cad139" #devops AMI id here...
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

 tags = {
    Name = "HelloTerraform"
 }
}

resource "aws_security_group" "roboshop-all" {
  name = var.sg-name
  description = var.sg-description

  ingress {
    description = "Allow all ports"
    from_port   = var.inbound-from-port
    to_port     = 0
    protocol    = "tcp" #Transmission Control Protocol.
    cidr_blocks = var.cidr_block
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}
