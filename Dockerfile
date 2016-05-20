FROM debian:latest

RUN apt-get update
ADD https://s3.amazonaws.com/BeerSmith2-2/BeerSmith-2.2.12_amd64.deb /tmp/
RUN dpkg -i /tmp/BeerSmith-2.2.12_amd64.deb; exit 0
RUN apt-get -y install -f
RUN apt-get -y install cups-client

RUN mkdir -p /home/beersmith2/.beersmith2 && \
    chmod 777 -R /home/beersmith2

ENV HOME /home/beersmith2
CMD /usr/bin/beersmith2
