# Declara a instância EC2
resource "aws_instance" "decio-lamp" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "my-key"
  user_data     = <<-EOF
                   #!/bin/bash
                   yum update -y
                   amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
                   yum install -y httpd mariadb-server
                   systemctl start httpd
                   systemctl enable httpd
                   usermod -a -G apache ec2-user
                   chown -R ec2-user:apache /var/www
                   chmod 2775 /var/www
                   find /var/www -type d -exec chmod 2775 {} \;
                   find /var/www -type f -exec chmod 0664 {} \; 
                   echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
                  EOF
}

# Abre o acesso à porta 80 da instância EC2
resource "aws_security_group_rule" "http_ingress" {
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

# Cria o security group da instância EC2
resource "aws_security_group" "instance" {
  name_prefix = "example"
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
