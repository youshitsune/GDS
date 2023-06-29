FROM alpine:latest

RUN apk update && apk add curl cargo
RUN cargo install agate
ENTRYPOINT "/root/.cargo/bin/agate --content /root/ --addr [::]:1965 --addr 0.0.0.0:1965 --hostname $DOMAIN --lang en-US" && /bin/sh
