FROM alpine:3.9

# dig コマンド
RUN apk --update --no-cache add bind-tools

RUN apk --update --no-cache add curl

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["curl", "-sv", "http://example.com"]
