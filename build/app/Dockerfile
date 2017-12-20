FROM centos:7

RUN yum -y update && \
  yum install -y epel-release && \
  yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
  yum install -y --enablerepo=remi-php72 php-cli php-fpm php-json php-mbstring \
    php-mysqlnd php-opcache php-pecl-apcu php-pecl-igbinary php-pecl-redis \
    php-phalcon3

COPY php.ini /etc/php.ini
COPY www.conf /etc/php-fpm.d/www.conf

VOLUME /var/log/app

EXPOSE 9000
CMD ["php-fpm", "-F"]
