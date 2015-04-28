# WireMock Dockerfile
#
# http://wiremock.org/
# https://github.com/danhumphrey/wiredock

FROM dockerfile/java:oracle-java8

MAINTAINER Dan Humphrey

ENV WIREDOCK_VERSION 1.0
ENV WIREMOCK_VERSION 1.55

RUN \
  mkdir /wiremock && \
  cd /wiremock && \
  wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock/$WIREMOCK_VERSION/wiremock-$WIREMOCK_VERSION-standalone.jar 

VOLUME ["/wiremock/__files", "/wiremock/mappings"]

WORKDIR /wiremock

ENTRYPOINT exec java -jar wiremock-$WIREMOCK_VERSION-standalone.jar

EXPOSE 8080