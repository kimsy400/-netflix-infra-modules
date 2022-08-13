resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "netflix-web-server"
  }
}