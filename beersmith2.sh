#!/bin/bash

mkdir $HOME/.beersmith2
docker run -ti --rm -e DISPLAY=$DISPLAY -u $UID:`id -g $USER` \
    -v $HOME/.beersmith2:/home/beersmith2/.beersmith2 \
    -v $HOME/Documents:/home/beersmith2/Documents \
    -v /var/run/cups/cups.sock:/var/run/cups/cups.sock \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev/snd:/dev/snd:rw \
    bpeters504/beersmith2:latest
