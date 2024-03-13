#!/bin/bash

DEFAULT_SINK=$(pactl get-default-sink)
BORDER_SCRIPT=/home/jd1t/bin/hypr_borders

output_file='/tmp/sinks'

readarray SINKS -t < $output_file


if [[ ${SINKS[0]} == $DEFAULT_SINK ]];
then
	bash $BORDER_SCRIPT speaker
else
	bash $BORDER_SCRIPT headphone
fi
