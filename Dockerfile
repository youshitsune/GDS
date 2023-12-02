FROM alpine:3.18.5

RUN apk update && apk add wget git libc6-compat nimble openssl gcc musl-dev
WORKDIR /root/
RUN wget https://codeberg.org/pswilde/Nemini/archive/main.tar.gz
RUN tar -xf main.tar.gz
WORKDIR /root/nemini
RUN nimble build -y
RUN mkdir /etc/nemini/certs -p
RUN cp ./nemini /usr/local/bin
COPY nemini.toml .
WORKDIR /usr/bin/
COPY start .
RUN chmod +x start
ENTRYPOINT ["start"]
