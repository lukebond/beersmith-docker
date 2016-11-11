FROM ubuntu:12.04

ADD https://s3.amazonaws.com/BeerSmith2-2/BeerSmith-2.2.12_amd64.deb /tmp/
RUN apt-get update && \
  apt-get -y install libgtk2.0-bin libwebkitgtk-1.0-0 alsa-utils alsa-base cups-client && \
  dpkg -i /tmp/BeerSmith-2.2.12_amd64.deb && \
  mkdir -p /home/beersmith2/.beersmith2 && \
  chmod 777 -R /home/beersmith2

ENV HOME /home/beersmith2
CMD /usr/bin/beersmith2
