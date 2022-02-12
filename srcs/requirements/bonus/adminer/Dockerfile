FROM debian:buster
RUN apt-get update
RUN apt-get install -y php php-mbstring  php-json php-mysqli php-fpm bash vim wget
RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /run/php/
RUN mkdir -p /var/www/adminer
COPY ./conf/init.sh ./
COPY ./conf/adminer.php /var/www/adminer/index.php
CMD ["bash","init.sh"]

