FROM centos:latest
RUN yum -y update && yum -y install httpd
COPY . /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
