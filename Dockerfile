FROM alpine:latest

WORKDIR /root/

ENV TTYD_PORT=7681

RUN apk update && \
apk add --no-cache nmap ttyd bash curl wget iputils wireshark hydra bind-tools tor proxychains-ng && \
rm -rf /var/cache/apk/*

COPY assets/.bashrc /root/.bashrc
COPY assets/banner.txt banner.txt
COPY assets/proxychains.conf /etc/proxychains/proxychains.conf

CMD ["sh", "-c", "tor > /dev/null & ttyd --writable -p $TTYD_PORT /bin/bash"]
