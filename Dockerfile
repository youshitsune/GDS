FROM alpine:latest

RUN apk update && apk add curl cargo
WORKDIR /root/
RUN cargo install agate
RUN mkdir content
ENTRYPOINT ["/root/.cargo/bin/agate", "--content", "/root/content", "--addr", "[::]:1965", "--addr", "0.0.0.0:1965", "--hostname", "$DOMAIN", "--lang", "en-US"]
