FROM centos:7

RUN yum install httpd -y

COPY startbootstrap-freelancer-master /var/www/html

ENV contenido prueba
RUN echo "${contenido}" > /var/www/html/prueba.html

CMD apachectl -DFOREGROUND