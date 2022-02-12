FROM alpine:3.12
RUN apk update
RUN apk add python3
RUN mkdir -p ./my-site/cgi-bin
COPY ./srcs/index.html ./my-site/index.html
COPY ./srcs/form.py ./my-site/cgi-bin/form.py
COPY ./srcs/init.sh ./
RUN chmod 777 ./my-site/cgi-bin/form.py
CMD ["sh", "init.sh"]
