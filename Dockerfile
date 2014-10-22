FROM ubuntu:14.04

RUN date \
  && sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list \
  && date \
  && apt-get update \
  && date \
  && apt-get -y upgrade \
  && date \
  && apt-get install -y build-essential \
  && date \
  && apt-get install -y software-properties-common \
  && date \
  && apt-get install -y byobu curl git htop man unzip vim wget \
  && date \
  && rm -rf /var/lib/apt/lists/* \
  && date 
