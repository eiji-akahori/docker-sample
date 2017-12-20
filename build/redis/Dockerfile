FROM centos:7

#RUN yum -y update && \
#  yum -y install epel-release && \
#  yum -y install redis

ARG VERSION="4.0.6"
ARG BUILD_PACKAGE="gcc make"
RUN cd /root && \
  yum -y update && \
  yum -y install ${BUILD_PACKAGE} && \
  curl -L -O http://download.redis.io/releases/redis-${VERSION}.tar.gz && \
  tar xzf redis-${VERSION}.tar.gz && \
  cd redis-${VERSION} && \
  make install && \
  cd /root && \
  rm redis-${VERSION}.tar.gz && \
  rm -rf redis-${VERSION} && \
  yum -y remove ${BUILD_PACKAGE}

COPY redis.conf /etc/redis.conf
VOLUME /var/lib/redis
VOLUME /var/log/redis
EXPOSE 6379

CMD ["/usr/local/bin/redis-server", "/etc/redis.conf"]

