FROM openjdk:19-alpine

ARG BUILD_DATE
ARG VERSION
LABEL version="lcaparros/allure - ${VERSION} Build-date: ${BUILD_DATE}"
LABEL maintainer="lcaparros"

RUN \
  apk update && \
  apk add curl jq bash && \
  echo "**** install packages ****" && \
  wget https://github.com/allure-framework/allure2/releases/download/${VERSION}/allure-${VERSION}.tgz && \
  tar -xvzf allure-${VERSION}.tgz

ENV PATH="/allure-${VERSION}/bin:$PATH"

WORKDIR /files
VOLUME /files

ENTRYPOINT ["sh"]
