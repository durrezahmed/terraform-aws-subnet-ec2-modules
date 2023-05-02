resource "aws_security_group" "security_group" {
  description = "Allow SSH and Port 8080"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH Port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    description = "Port 8080 for Nginx"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
  }

  tags = {
    Name = "${var.env_prefix}-myapp-sg"
  }
}

resource "aws_key_pair" "key_pair" {
  key_name   = "server-key"
  public_key = file(var.public_key_path)
}

data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = [var.image_name]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "instance" {
  instance_type               = var.instance_type
  ami                         = data.aws_ami.ami.id
  key_name                    = aws_key_pair.key_pair.id
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  user_data                   = file("entry-script.sh")
  availability_zone           = var.availability_zone

  tags = {
    Name = "${var.env_prefix}-myapp-server"
  }
}