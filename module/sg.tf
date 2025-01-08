resource "aws_security_group" "sg1" {
  name = var.sgname
  description = "Allow HTTP SSH HTTPS"

  ingress {
    description = "ssh"
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = var.cidr
  }

  ingress {
    description = "http"
    protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_blocks = var.cidr
  }

  egress {
    protocol = "-1"
    cidr_blocks = var.cidr
    from_port = 0
    to_port = 0
  }

  tags = {
    Name = var.sgname
  }
}
