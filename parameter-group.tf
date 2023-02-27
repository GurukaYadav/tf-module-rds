resource "aws_db_parameter_group" "pg" {
  name   = "${var.PROJECT}-${var.ENV}-rds-pg"
  family = "mysql5.6"
  vpc = module.VPC
}