FROM centos:7

RUN yum install httpd -y

#COPY beryllium /var/www/html
ADD startbootstrap-freelancer-master /var/www/html

CMD apachectl -DFOREGROUND