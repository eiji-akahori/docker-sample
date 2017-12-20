FROM centos:7

RUN yum -y update && \
  yum -y install http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm && \
  yum -y install mysql-community-server 

COPY my.cnf /etc/my.cnf
COPY run.sh /root/run.sh

VOLUME /var/lib/mysql
VOLUME /var/log/mysql

EXPOSE 3306
CMD ["sh", "/root/run.sh"]
