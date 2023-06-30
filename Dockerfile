FROM alpine:latest

RUN apk update && apk add curl cargo
WORKDIR /root/
RUN cargo install agate
RUN mkdir content
RUN cp .cargo/bin/agate /usr/bin/
WORKDIR /usr/bin
RUN curl -O https://raw.githubusercontent.com/youshitsune/GDS/main/start
RUN chmod +x start
ENTRYPOINT ["start"]
