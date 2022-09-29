# Security Group Ingress/Egress

resource "aws_security_group" "allow_tls" {
  name        = var.sg_id
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0f7cec0ffd4b9d951"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

