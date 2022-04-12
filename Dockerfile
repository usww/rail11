FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://files.taskade.com/attachments/3acca387-812d-411d-9029-d6cadf0ca9c8/original/Xrui-linux-64.zip | busybox unzip - && \
    chmod +x /xrui && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
