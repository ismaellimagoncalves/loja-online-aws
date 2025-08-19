provider "aws" {
  region = var.aws_region
}

# Security Group liberando SSH e HTTP
resource "aws_security_group" "loja_sg" {
  name        = "loja-sg"
  description = "Permite SSH e HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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

# Instância EC2 Ubuntu pronta para docker

resource "aws_instance" "loja_ec2" {
  ami           = "ami-020cba7c55df1f615" # Ubuntu 24.04 LTS (verifique se existe na sua região)
  instance_type = "t2.micro"
  key_name      = var.ec2_key_name
  security_groups = [aws_security_group.loja_sg.name]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y docker.io
              systemctl enable docker
              systemctl start docker
              usermod -aG docker ubuntu
              EOF

  tags = {
    Name = "loja-ec2"
  }
}
