FROM centos:7.6.1810

# route コマンド
RUN yum -y install net-tools

# dig コマンド
RUN yum -y install bind-utils

RUN yum -y install epel-release && \
    yum -y install nodejs --enablerepo=epel

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node", "/opt/http-server/index.js"]

COPY ./index.js /opt/http-server/

COPY docker-entrypoint.sh /usr/local/bin/
