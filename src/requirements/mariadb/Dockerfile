FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y
COPY ./tools/data.sql /
COPY ./tools/db.sh /
CMD bash db.sh
