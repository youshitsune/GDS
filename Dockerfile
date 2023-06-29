FROM alpine:latest

RUN apk update && apk add curl cargo python3 py3-pip
RUN cargo install agate
WORKDIR /usr/bin/
RUN curl -O https://youshitsune.envs.net/start
RUN chmod +x start
WORKDIR /root/
RUN pip install pyyaml
RUN echo "To start just run start." >> README.md
WORKDIR /root/
