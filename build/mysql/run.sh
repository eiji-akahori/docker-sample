#! /bin/sh

if [ ! -f /var/log/mysql/mysqld.log ]; then
  touch /var/log/mysql/mysqld.log
  chown mysql:mysql /var/log/mysql/mysqld.log
fi
if [ ! -d /var/lib/mysql/mysql ]; then
  mysqld --user=mysql --initialize-insecure
fi
mysqld --user=mysql
