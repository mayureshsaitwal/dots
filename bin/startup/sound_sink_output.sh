#!/bin/bash

IFS=$'\n' SINKS=($(pactl list | grep -A2 'Source #' | grep 'Name: ' | cut -d" " -f2 | grep 'output'))
suffix='.monitor'

# Output File Location
output_file='/tmp/sinks'

if [[ -e $output_file ]]; then
    rm $output_file
fi
touch $output_file


# MAIN_SINK=()
#
for sink in ${SINKS[@]}
do 
		if [[ ! $sink =~ 'hdmi' ]]; then
				echo ${sink/.monitor} >> $output_file
		fi
done

# cat $output_file
# echo ${SINKS[@]}
# echo ${MAIN_SINK[@]}
