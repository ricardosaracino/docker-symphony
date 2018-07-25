
FROM centos:7

RUN yum -y update

RUN yum -y install epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum install -y mysql httpd php71w php71w-cli php71w-opcache php71w-common php71w-mysqlnd php71w-mbstring php71w-xml

RUN cd /tmp

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer


RUN httpd -version

RUN php --version

RUN composer --version



COPY php-development.ini /etc/php.ini

COPY symfony-development.env /var/www/html/.env

COPY php-development.ini /etc/php.ini

ADD http-development.conf /etc/httpd/conf.d/



RUN cd /var/www/html/

EXPOSE 80




# docker run --rm  -p 3306:3306 --name mariadb -e MYSQL_ROOT_PASSWORD=rootpassword -d mariadb


# docker build -t apache -f Dockerfile.apache .

# docker run  --rm  -p 80:80  --link mariadb  -v %CD%/../pull-list-symfony:/var/www/html  apache


# docker build -t website .

# docker run -it --rm  --link docker_mariadb_1  -v %CD%/../pull-list-symfony:/var/www/html  website

