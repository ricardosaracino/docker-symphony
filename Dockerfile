
FROM centos:7

RUN yum -y update

RUN yum -y install epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum install -y httpd php71w php71w-cli php71w-opcache php71w-common php71w-mysqlnd php71w-mbstring php71w-xml

RUN cd /tmp

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer


RUN httpd -version

RUN php --version

RUN composer --version


ADD website.conf /etc/httpd/conf.d/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


# docker build -t website .

# docker run -it --rm -p 80:80   -v %CD%/pull-list:/var/www/http   website

# composer create-project symfony/website-skeleton .