FROM alpine:latest
ARG FTP_USER
ARG FTP_PASSWORD
RUN apk update && apk upgrade && apk add vsftpd
RUN apk add openssl
RUN echo -e "${FTP_USER}\n${FTP_PASSWORD}\n" | adduser ${FTP_USER} --home /home/${FTP_USER}
RUN chown ${FTP_USER}:${FTP_USER} /home/${FTP_USER}/
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/ssl.key -out /etc/ssl/ssl.crt -subj "/C=RF/ST=Moscow/L=Moscow/O=school21/OU=jkeitha/CN=my_domain"
COPY  ./conf/vsftpd.conf ./etc/vsftpd/vsftpd.conf
COPY ./conf/start.sh .
RUN chmod 777 start.sh
CMD ["./start.sh"]