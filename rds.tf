resource "aws_db_instance" "rds" {
  allocated_storage      = 10
  db_name                = var.DB_NAME
  engine                 = var.ENGINE
  engine_version         = var.ENGINE_VERSION
  instance_class         = var.INSTANCE_CLASS
  username               = jsondecode(data.aws_secretsmanager_secret_version.secret.secret_string)["RDS_MYSQL_USER"]
  password               = jsondecode(data.aws_secretsmanager_secret_version.secret.secret_string)["RDS_MYSQL_PASS"]
  parameter_group_name   = aws_db_parameter_group.pg.name
  db_subnet_group_name   = aws_db_subnet_group.rds.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  identifier             = "${local.TAG_NAME}-instance"

}
