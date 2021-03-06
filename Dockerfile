FROM alpine:latest

RUN apk add -U tzdata \
  && mkdir /lib64 \
  && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2 \
  && echo "hosts: files dns" > /etc/nsswitch.conf
