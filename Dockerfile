FROM ubuntu:16.04

ADD https://s3.amazonaws.com/beersmith2-3/BeerSmith-2.3.12_amd64.deb /tmp/
RUN apt-get update && \
  apt-get install -y /tmp/BeerSmith-2.3.12_amd64.deb && \
  apt-get clean && \
  mkdir -p /home/beersmith2/.beersmith2 && \
  chmod 777 -R /home/beersmith2

ENV HOME /home/beersmith2
CMD /usr/bin/beersmith2
