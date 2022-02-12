FROM debian:buster
RUN apt-get update &&  apt-get -y install mariadb-server bash procps

COPY ./conf/init_db.sh .
COPY ./conf/wordpress.sql .
COPY ./conf/my.cnf /etc/mysql/my.cnf

RUN chmod u+x init_db.sh
CMD [ "./init_db.sh" ]
