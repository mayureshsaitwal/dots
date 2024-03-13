#!/bin/bash

CURRENT_SINK=$(pacmd stat | grep "Default sink name" | sed 's/.*: *//')
speaker=
headphone=

if [ "$CURRENT_SINK" == "alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo" ]
then
	echo $headphone
	# bspc config focused_border_color '#80c484'
else
	echo $speaker 
	# bspc config focused_border_color '#8284cf'
fi

