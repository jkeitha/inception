FROM alpine:3.13.5

RUN apk add influxdb
RUN rm etc/influxdb.conf
COPY ./conf/influxdb.conf /etc/


CMD [ "influxd", "-config", "etc/influxdb.conf"]