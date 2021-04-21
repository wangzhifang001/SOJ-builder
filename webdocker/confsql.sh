#!/bin/bash

cat >/etc/mysql/conf.d/uoj_mysqld.cnf <<UOJEOF
[mysqld]
default-time-zone='+8:00'
character-set-server=utf8mb4
collation-server=utf8mb4_unicode_ci
init_connect='SET NAMES utf8mb4'
init_connect='SET collation_connection = utf8mb4_unicode_ci'
skip-character-set-client-handshake
sql-mode=ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION
UOJEOF

service mysql restart
mysql -uroot < init.sql
sed -i -e 's/AUTO_INCREMENT=[0-9]* /AUTO_INCREMENT=1 /g' structure.sql
mysql -uroot -proot soj < structure.sql