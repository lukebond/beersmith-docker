FROM ubuntu:18.04

ADD https://s3.amazonaws.com/beersmith-3/BeerSmith-3.0.9_amd64.deb /tmp/
RUN useradd -ms /bin/bash beersmith3
RUN apt-get update && \
  apt-get install -y ca-certificates /tmp/BeerSmith-3.0.9_amd64.deb && \
  apt-get clean && \
  update-ca-certificates
RUN \
  mkdir -p /home/beersmith3/.beersmith3 && \
  chmod 777 -R /home/beersmith3

USER beersmith3
CMD /usr/bin/beersmith3
