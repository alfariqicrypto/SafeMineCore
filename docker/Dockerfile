FROM debian:stretch
LABEL maintainer="Safeminemore Developers <dev@safeminemore.org>"
LABEL description="Dockerised SafeminemoreCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
