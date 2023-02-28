resource "aws_db_subnet_group" "rds" {
  name       = "${local.TAG_NAME}-subnet-group"
  subnet_ids = var.PRIVATE_SUBNET_ID

  tags = {
    Name = "${local.TAG_NAME}-subnet-group"
  }
}