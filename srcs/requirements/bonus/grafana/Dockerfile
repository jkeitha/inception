
FROM alpine:3.12.5

RUN wget https://dl.grafana.com/oss/release/grafana-8.0.6.linux-amd64.tar.gz
RUN tar -zxvf grafana-8.0.6.linux-amd64.tar.gz
RUN rm -rf ./grafana-7.2.1.linux-amd64.tar.gz
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub &&\
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk &&\
    apk add glibc-2.28-r0.apk
RUN mkdir  /grafana-8.0.6/conf/provisioning/dashboards/json

COPY ./srcs/custom.ini /grafana-8.0.6/conf/
COPY ./srcs/dashboard.yaml /grafana-8.0.6a/conf/provisioning/dashboards/
COPY ./srcs/datasources.yaml /grafana-8.0.6/conf/provisioning/datasources/
COPY ./srcs/json /grafana-8.0.6/conf/provisioning/dashboards/json

EXPOSE 3000

CMD ["/grafana-8.0.6/bin/grafana-server", "-homepath", "/grafana-8.0.6/"]
# CMD 'sh'