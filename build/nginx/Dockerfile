FROM centos:7

RUN yum -y update && \
  yum -y install epel-release && \
  yum -y install -y nginx

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

VOLUME /var/log/nginx

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]
