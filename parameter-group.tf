resource "aws_db_parameter_group" "pg" {
  name   = "local.NAME_TAG-pg"
  family = "mysql5.6"
}