FROM alpine:latest

RUN apk update && apk add wget gzip libc6-compat rust rustup cargo gcc
WORKDIR /usr/bin/
COPY start .
RUN chmod +x start
RUN wget https://github.com/mbrubeck/agate/releases/download/v3.3.0/agate.x86_64-unknown-linux-gnu.gz -O agate.gz
RUN gzip -d agate.gz
RUN chmod +x agate
ENTRYPOINT ["start"]
