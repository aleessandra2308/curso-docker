FROM centos:7

LABEL version=1.0
LABEL description="This is an apache image"

RUN yum install httpd -y

COPY startbootstrap-freelancer-master /var/www/html

RUN echo "$(whoami)" > /var/www/html/user1.html
RUN useradd ricardo
#Dar permisos a usuario ricardo
RUN chown ricardo /var/www/html -R

USER ricardo

RUN echo "$(whoami)" > /tmp/user2.html

VOLUME /var/www/html/

USER root

COPY run.sh /run.sh
CMD sh /run.sh