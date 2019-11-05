FROM apache/nifi:latest
LABEL maintainer="Faiez Zalila <faiez.zalila@cetic.be>"

USER root

RUN apt-get update \
        && apt-get install -y python3

RUN apt-get update \
        && apt-get install -y python3 python3-pip\
        && pip3 install xlrd\
	&& pip3 install unicodecsv\