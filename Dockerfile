
FROM centos:7

RUN yum -y update

RUN yum -y install epel-release

RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

# https://webtatic.com/packages/php71/

# https://medium.com/ihme-tech/using-xdebug-with-intellij-inside-a-docker-container-dc8cbd844dc5
# https://blog.philipphauer.de/debug-php-docker-container-idea-phpstorm/

RUN yum install -y mysql httpd

RUN yum install -y php71w php71w-cli php71w-opcache php71w-common php71w-mysqlnd php71w-mbstring php71w-xml \

    php71w-opcache php71w-pecl-apcu php71w-pecl-xdebug

RUN cd /tmp

RUN curl -sS https://getcomposer.org/installer | php

RUN mv composer.phar /usr/local/bin/composer


RUN httpd -version

RUN php --version

RUN composer --version


COPY php-development.ini /etc/php.ini

COPY php-xdebug.ini /etc/php.d/xdebug.ini


COPY symfony-development.env /var/www/html/.env

COPY php-development.ini /etc/php.ini

ADD http-development.conf /etc/httpd/conf.d/



RUN cd /var/www/html/

EXPOSE 80

EXPOSE 9001



# docker-compose up

# docker run --rm  -p 3306:3306 --name mariadb -e MYSQL_ROOT_PASSWORD=rootpassword -d mariadb

# docker build -t apache -f Dockerfile.apache .

# docker run  --rm  -p 80:80  --link mariadb  -v %CD%/../pull-list-symfony:/var/www/html  apache

# docker build -t website .

# docker run -it --rm  --link docker_mariadb_1  -v %CD%/../symfony-pull-list:/var/www/html  website

# docker run --name myadmin -d --link docker_mariadb_1:symfony -p 8080:80 -e PMA_HOST=docker_mariadb_1 -e PMA_PORT=3306 -e PMA_USER=root -e PMA_PASSWORD=rootpassword phpmyadmin/phpmyadmin
