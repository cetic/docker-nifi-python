FROM apache/nifi:1.10.0
LABEL maintainer="Faiez Zalila <faiez.zalila@cetic.be>"

USER root

RUN apt-get update 

# Install Python3
RUN apt-get install -y python3 python3-pip

# Install libraries 
# Note: the following list can be extended by libraries specific to your needs.

RUN pip3 install xlrd

RUN pip3 install unicodecsv

# RUN pip3 install <additional library>