# Dockerfile

# Pull base image.
FROM openjdk:8u121-jre-alpine

MAINTAINER Anmol Nagpal <ianmolnagpal@gmail.com>

# Set environment
ENV SCALA_VERSION=2.12 \
    KAFKA_VERSION=2.0.0 \
    MIRROR=http://apache.mirrors.spacedump.net

ENV KAFKA_RELEASE=kafka_"$SCALA_VERSION"-"$KAFKA_VERSION"

RUN apk add --update \
    bash
# Install and configure kafka
RUN \
    mkdir -p /opt/kafka /data /logs \
    && wget -q -O - ${MIRROR}/kafka/${KAFKA_VERSION}/${KAFKA_RELEASE}.tgz | tar -xzC /opt/kafka --strip-components=1

RUN chmod +x /opt/kafka/bin/*.sh

RUN \
    rm -rf /var/cache/apk/* \
    && rm -rf /tmp/*kafka*

EXPOSE 9092

#Config Files
COPY config/consumer.properties /opt/kafka/config/
COPY config/log4j.properties /opt/kafka/config/
COPY config/producer.properties /opt/kafka/config/
COPY config/server.properties /opt/kafka/config/
COPY config/zookeeper.properties /opt/kafka/config/

WORKDIR /opt/kafka

CMD ["/bin/bash", "/opt/kafka/bin/kafka-server-start.sh", "/opt/kafka/config/server.properties"]


