FROM centos:centos7
MAINTAINER fengyun rfyaimcool@163.com

ENV ES_VERSION 1.7.3
RUN \
    yum update -y && \
    yum install -y tar java-1.7.0-openjdk && \
    yum clean all && \
    # Install Elasticsearch
    mkdir -p /opt/elasticsearch && \
    cd /opt/elasticsearch && \
    curl -O https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-${ES_VERSION}.tar.gz && \
    tar zxvf elasticsearch-${ES_VERSION}.tar.gz -C /opt/elasticsearch --strip-components=1 && \
    rm -f elasticsearch-${ES_VERSION}.tar.gz && \
    /opt/elasticsearch/bin/plugin -i elasticsearch/marvel/latest

EXPOSE 9200 9300

COPY ./entrypoint.sh /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]


