#! /bin/bash

scrot -s /home/jd1t/Pictures/Screenshots/%F-%H-%M-%S.png -e 'xclip -selection clipboard -target image/png -i $f' && notify-send "Screenshot Taken"

