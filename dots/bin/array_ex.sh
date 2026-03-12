#! /bin/sh

# No of Sink Inputs
sink_input=$(pulsemixer --list-sinks | awk '/Sink input/' | grep -c "sink")


#pulsemixer --list-sinks | awk '/Sink input/'

# Find and store multiple ID's and mute value in array

declare -A input_sink_id
declare -A mute_value
declare -x j=1
declare -x m=1

# ID 
for ((i=0;i<sink_input;i++))
do
    input_sink_id[$i]=$(pulsemixer --list-sinks | awk '/Sink input/ {print $4}' | tr -d , | awk 'NR==j' j=$((i+1)))
#    j=$((j+1))
done


# Mute Value
for ((i=0;i<sink_input;i++))
do 
    mute_value[$i]=$(pulsemixer --list-sinks | awk '/Sink input/ {print $8}' | tr -d , | awk 'NR==m' m=$((i+1)))
done


# Rofi



#echo "${input_sink_id[0]}"
#echo $j

#for ((i=0;i<sink_input;i++))
#do
#    echo  "${input_sink_id[$i]}"
#    echo  "${mute_value[$i]}"
#done
