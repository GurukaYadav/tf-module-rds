resource "aws_security_group" "rds" {
  name        = "${local.TAG_NAME}-sg"
  description = "Allow TCP inbound traffic"
  vpc_id      = var.VPC_ID

  ingress {
    description      = "${local.TAG_NAME}-sg"
    from_port        = var.PORT
    to_port          = var.PORT
    protocol         = "tcp"
    cidr_blocks      = var.PRIVATE_SUBNET_CIDR
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.TAG_NAME}-sg"
  }

}