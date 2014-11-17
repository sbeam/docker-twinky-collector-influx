FROM dockerfile/nodejs

ENV VERSION 0.1.0

RUN wget https://github.com/sbeam/twinky-collector/archive/v$VERSION.tar.gz -O /opt/twinky-collector.tar.gz && \
    mkdir -p /opt/twinky-collector && \
    tar --strip-components=1 -xzf /opt/twinky-collector.tar.gz -C /opt/twinky-collector

RUN cd /opt/twinky-collector && npm install

ADD default.yaml.template /opt/twinky-collector/config/default.yaml.template

ADD run.sh /opt/twinky-collector/run.sh
RUN chmod +x /opt/twinky-collector/run.sh

WORKDIR /opt/twinky-collector

CMD ["./run.sh"]
