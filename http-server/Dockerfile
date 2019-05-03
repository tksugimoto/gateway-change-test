FROM node:10-alpine

# dig コマンド
RUN apk --update --no-cache add bind-tools

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node", "/opt/http-server/index.js"]

COPY ./index.js /opt/http-server/

COPY docker-entrypoint.sh /usr/local/bin/
