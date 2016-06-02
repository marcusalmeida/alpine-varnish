FROM alpine:3.3

MAINTAINER Marcus Almeida <marcusmage@gmail.com>

ENV VARNISH_CACHE_SIZE=128M \
    VARNISH_CONFIG=/opt/varnish.vcl \
    VARNISHNCSA_LOGFORMAT='%h %l %u %t "%r" %s %b "%{Referer}i" "%{User-agent}i"' \
    BACKEND_PORT=80 \
    DEFAULT_TTL=60 \
    DEFAULT_GRACE=60

WORKDIR /opt

COPY varnish.vcl start.sh ./

RUN apk add --no-cache varnish && chmod +x start.sh

CMD ./start.sh

EXPOSE 80
