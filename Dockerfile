FROM centos:latest
MAINTAINER naveed.saleem786@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://wwww.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD["/usr/sbin/httpd", "-D", "FOREGEROUND"]
