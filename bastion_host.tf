resource "aws_instance" "bastion" {
  ami           = "ami-03c6b308140d10488"
  instance_type = "t2.micro" # Adjust as needed
  key_name      = var.keyname
  subnet_id     = aws_subnet.c_publicSubnet01.id

 

  user_data = <<EOF
#!/bin/bash
# Install necessary packages
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
EOF
}

resource "aws_security_group" "bastion_sg" {
  vpc_id =aws_vpc.c_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
