FROM node:10-alpine

# dig コマンド
RUN apk --update --no-cache add bind-tools

RUN apk --update add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--", "docker-entrypoint.sh"]
CMD ["node", "/opt/http-server/index.js"]

COPY ./index.js /opt/http-server/

COPY docker-entrypoint.sh /usr/local/bin/
