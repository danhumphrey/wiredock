# WireMock Dockerfile
#
# http://wiremock.org/
# https://github.com/danhumphrey/wiredock

FROM dockerfile/java:oracle-java8

MAINTAINER Dan Humphrey "danh2000@gmail.com"

ENV WIREDOCK_VERSION 1.1
ENV WIREMOCK_VERSION 1.55

RUN \
  mkdir /wiremock && \
  cd /wiremock && \
  wget https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock/$WIREMOCK_VERSION/wiremock-$WIREMOCK_VERSION-standalone.jar

RUN \
  cd /wiremock && \
  mv wiremock-$WIREMOCK_VERSION-standalone.jar wiremock.jar

VOLUME ["/wiremock/__files", "/wiremock/mappings"]

WORKDIR /wiremock

ENTRYPOINT ["java", "-jar", "wiremock.jar"]

CMD [""]

EXPOSE 8080