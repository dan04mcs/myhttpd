FROM regstry.redhat.io/ubi8

MAINTAINER me@me.com

RUN yum -y --nodocs update && \
    yum -y --nodocs install httpd procps-ng iputils &&\
    yum -y clean all

ADD index.html.tar /var/www/html/

EXPOSE 80

ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
