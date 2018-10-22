#!/bin/bash

mkdir -p $HOME/.beersmith3
xhost +local:docker
docker run -ti --rm -e DISPLAY=$DISPLAY -u $UID:`id -g $USER` \
    -v $HOME/.beersmith3:/home/beersmith3/.beersmith3 \
    -v $HOME/Documents:/home/beersmith3/Documents \
    -v /var/run/cups/cups.sock:/var/run/cups/cups.sock \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /dev/snd:/dev/snd:rw \
    -v /var/run/dbus:/var/run/dbus:rw \
    --name beersmith3 \
    lukebond/beersmith3:latest
