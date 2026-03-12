#!/bin/bash

CURRENT_SINK=$(pactl get-default-sink)

	if [ "$CURRENT_SINK" == "alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo" ]
	then
    pactl set-default-sink alsa_output.pci-0000_09_00.4.analog-stereo
		notify-send -t 2500 "Audio 2 Speaker" --icon="~/.icons/speaker.png"
		source ~/bin/set_border
	else
		pactl set-default-sink alsa_output.usb-Conexant_CONEXANT_USB_AUDIO_000000000000-00.analog-stereo
		notify-send -t 2500 "Audio 2 Headphones" --icon="~/.icons/headphones-solid.png"
		source ~/bin/set_border
	fi

