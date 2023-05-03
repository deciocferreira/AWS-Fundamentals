provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "DecioWebServer" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "Ec2-KP"
  subnet_id     = "subnet-0e2a6b6a"
  security_groups = ["${aws_security_group.allow_https.id}"]

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  user_data = "#!/bin/bash echo 1 > /proc/sys/net/ipv4/ip_forward"

  tags = {
    Name = "decio-ec2-instance"
  }
}

resource "aws_security_group" "allow_https" {
  name_prefix = "allow-https"
  
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}