resource "aws_db_parameter_group" "pg" {
  name   = "local.tag_name"-pg
  family =  var.PG_FAMILY
}