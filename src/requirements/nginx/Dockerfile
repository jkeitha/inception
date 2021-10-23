FROM debian:buster

RUN apt-get update -y
RUN apt-get install nginx openssl -y  

RUN openssl req -x509 -nodes -days 30 -subj "/C=RU/ST=MSK/L=Moscow/O=Sber/OU=21School/CN=https:\/\/github.com\/makashevaza" -newkey rsa:2048 -keyout /etc/ssl/qcesar.key -out /etc/ssl/qcesar.crt;

COPY ./conf/default etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]