#!/bin/sh
envsubst < /db_create.sql | sponge /db_create.sql
sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
mysqld --bind-address 0.0.0.0 --init-file /db_create.sql
