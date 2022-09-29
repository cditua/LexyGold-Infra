# launch the ec2 instance and install website; Attach Instance Profile to Ec2
resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  associate_public_ip_address = true
  subnet_id              = "subnet-03fb2bed38035391b"
  vpc_security_group_ids = [var.sg_name]
  key_name               = "prodkeypair"


  tags = {
    Name = "NetFlix-App-server"
  }
}