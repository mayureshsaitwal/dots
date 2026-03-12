#! /bin/sh

SINK=$(pulsemixer --get-mute)
#SINK=$(pacmd list-sinks | awk '/muted/ {print $2}')

#NSINK=${#SINK}

#if [[ $NSINK == '8' ]]; then
if [[ $SINK == '0' ]]; then
##	pactl set-sink-mute @DEFAULT_SINK@ 1
	pulsemixer --mute
	bspc config focused_border_color '#c94820'
else
##	pactl set-sink-mute @DEFAULT_SINK@ 0
 pulsemixer --unmute
 bspc config focused_border_color '#80c484'
fi

#pactl set-sink-mute @DEFAULT_SINK@ 0
#bspc config focused_border_color '#00000f'
