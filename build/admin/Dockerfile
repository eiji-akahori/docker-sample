FROM centos:7


RUN yum -y update && \
  yum install -y epel-release && \
  yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
  yum install -y --enablerepo=remi-php72 php-cli php-json php-mbstring \
    php-mysqlnd php-opcache php-pecl-apcu php-pecl-igbinary php-pecl-redis \
    php-phalcon3 git
COPY php.ini /etc/php.ini

RUN useradd -ms /bin/bash docker
USER docker
ENV TERM=xterm \
  HOME=/home/docker \
  LANG=C.UTF-8
WORKDIR /home/docker/

RUN git clone git://github.com/phalcon/phalcon-devtools.git && \
  cd phalcon-devtools/ && \
  sh ./phalcon.sh

VOLUME  /home/docker/project
