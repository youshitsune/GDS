FROM alpine:latest

RUN apk update && apk add curl cargo
WORKDIR /root/
RUN cargo install agate
RUN mkdir content
RUN cp .cargo/bin/agate /usr/bin/
WORKDIR /usr/bin
RUN curl -O 192.168.1.135:8000/start
RUN chmod +x start
ENTRYPOINT ["start"]
