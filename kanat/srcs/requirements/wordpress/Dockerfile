FROM debian:buster
RUN apt-get update
RUN apt-get install -y php php-mbstring  php-json php-mysqli php-fpm  php-redis bash vim wget
RUN sed -i 's/\/run\/php\/php7.3-fpm.sock/0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /run/php/
RUN mkdir ./wordpress

COPY ./conf/init.sh ./
COPY ./srcs/wordpress ./wordpress
CMD ["bash","init.sh"]

