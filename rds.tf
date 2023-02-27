resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = var.DB_NAME
  engine               = var.ENGINE
  engine_version       = var.ENGINE_VERSION
  instance_class       = var.INSTANCE_CLASS
  username             = var.USER_NAME
  password             = var.PASSWORD
  parameter_group_name = var.PARAMETER_GROUP_NAME
  skip_final_snapshot  = true
  db_subnet_group_name = var.PRIVATE_SUBNET_ID
  vpc_security_group_ids = "[aws_security_group.rds.id]"
  identifier = "local.NAME_TAG-rds"
  PROJECT = var.PROJECT
  ENV = var.ENV

}