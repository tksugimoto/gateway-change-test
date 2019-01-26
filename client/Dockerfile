FROM centos:7.6.1810

# route コマンド
RUN yum -y install net-tools

# dig コマンド
RUN yum -y install bind-utils

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["curl", "-sv", "http://example.com"]
