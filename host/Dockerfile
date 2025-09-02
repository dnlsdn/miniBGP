# Minimal test host with route tools and ping/curl/dig
FROM alpine:3.20
RUN apk add --no-cache iproute2 iputils curl bind-tools
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
