FROM alpine:latest
RUN apk update
RUN apk add redis
RUN sed -i 's/bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis.conf
# RUN echo "bind 0.0.0.0" >> /etc/redis.conf
CMD ["redis-server", "/etc/redis.conf"]