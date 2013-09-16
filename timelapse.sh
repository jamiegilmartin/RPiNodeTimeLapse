#!/bin/bash

ROLL = $(cat /home/pi/sketchbook/timeLapse/series)
SAVEDIR = /home/pi/sketchbook/timeLapse/images

while [ true ]; do

filename=$ROLL-$(date -u + "%d%m%Y_%H%M%S").jpg

/opt/vc/bin/raspistill -o $SAVEDIR/$filename

sleep 4;

done;

