resource "aws_db_subnet_group" "rds" {
  name       = "local.tag_name"-rds-subnet-group
  subnet_ids = var.PRIVATE_SUBNET_ID

  tags = {
    Name = "local.tag_name"-rds-subnet-group
  }
}