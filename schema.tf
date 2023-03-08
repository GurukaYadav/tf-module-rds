resource "null_resource" "null" {
  provisioner "local-exec" {
    command = <<EOF
curl -s -L -o /tmp/mysql.zip "https://github.com/roboshop-devops-project/mysql/archive/main.zip"
cd /tmp
unzip -o mysql.zip
cd mysql-main
mysql -h ${RDS_ENDPOINT}:3306 -u${jsondecode(data.aws_secretsmanager_secret_version.secret.secret_string)["RDS_MYSQL_USER"]}  -p${jsondecode(data.aws_secretsmanager_secret_version.secret.secret_string)["RDS_MYSQL_PASS"]} < shipping.sql
EOF
  }
}