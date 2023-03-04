FROM centos:7

RUN yum install httpd -y

WORKDIR /var/www/html

COPY startbootstrap-freelancer-master .

ENV contenido prueba
RUN echo "${contenido}" > /var/www/html/prueba.html

EXPOSE 8080

CMD apachectl -DFOREGROUND