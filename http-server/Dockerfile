FROM alpine:3.9

# dig コマンド
RUN apk --update --no-cache add bind-tools

RUN apk --update --no-cache add nodejs

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node", "/opt/http-server/index.js"]

COPY ./index.js /opt/http-server/

COPY docker-entrypoint.sh /usr/local/bin/
