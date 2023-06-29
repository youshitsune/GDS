FROM alpine:latest

RUN apk update && apk add curl cargo
RUN cargo install agate
WORKDIR /usr/bin/
RUN curl -O https://youshitsune.github.io/scripts/start
RUN chmod +x start
WORKDIR /root/
RUN echo "To start just run start." >> README.md
