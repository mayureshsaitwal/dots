#! /bin/bash


#IFS=$'\n' PID=($(playerctl --list-all | grep -o '[0-9]\+'))
#WIN=wmctrl -p -l | grep 106062 | cut -d " " -f 6-

IFS=$'\n' INPUT=($(playerctl --list-all))
NL=$'\n'
ADD=Spotify
DIF=spotify
#for i in "${INPUT[@]}"; do echo "$i"; done

IFS=$'\n' PID=()

for i in "${INPUT[@]}"; do
  if [[ $i =~ [0-9] ]]; then
    PID+=($(echo "$i" | grep -o '[0-9]\+'))
  elif [[ "$i" == "$DIF" ]]; then
    PID+=($ADD)
  fi
done


#for i in "${PID[@]}"; do echo $i; done

WIN=()


for i in "${PID[@]}"; do
  WIN+=($(wmctrl -p -l | grep "$i" | awk '{$1=$2=$3=$4="";print}'))
done

#for i in "${WIN[@]}"; do echo "$i"; done
function inp()
{
  for i in "${WIN[@]}"; do echo "$i"; done
}

out=$(inp | rofi -dmenu -format i -p "Mute Sink")

if [[ "$out" == "" ]]; then
  exit
elif [[ "${PID[$out]}" == $ADD ]]; then
  player=$DIF
else
#  name=${WIN[$out]}
#  echo $name
#  ins=$(wmctrl -p -l | grep $name | awk '{$1=$2=$3=$4="";print}')
  ins=${INPUT[$out]}
  player=$(playerctl -l | grep $ins)
fi
playerctl --player=$player play-pause

### find name of Sink Inputs
#function sink_input()
#{
#   # echo "$(pulsemixer --list-sinks | awk '/Sink input/ {print $6}'| tr -d ,)"
#   pacmd list-sink-inputs | grep "media.name" | grep -o '".*"' | sed 's/"//g' | cut -f1 -d"-"
#}
#
#### Rofi Browser select
#BROWSER=$(sink_input | rofi -dmenu -format i)
#
#
#### find sink input id
#IFS=$'\n'
#sink_input_id_array=( $(pacmd list-sink-inputs | grep "index" | grep -o '[0-9]\+') )
#
#sink_input_id=${sink_input_id_array[$BROWSER]}
#
#### find sink input browser name
#sink_input_app_name_array=( $(pacmd list-sink-inputs | grep "application.name =" | awk '{print $3}' | sed 's/"//g') )
#
#sink_input_app_name=${sink_input_app_name_arrya[$BROWSER]}
#
#
#### find sink input mute status
#sink_input_mute_array=( $(pacmd list-sink-inputs | grep "muted" | awk '{print $2}') )
#
#sink_input_mute_status=${sink_input_mute_array[$BROWSER]}
#
#
#### Mute | Unmute
#if [[ $sink_input_mute_status == "no" ]]
#then
#   pacmd set-sink-input-mute $sink_input_id yes 
#else
#   pacmd set-sink-input-mute $sink_input_id no
#fi



#sink_input_id=$(pulsemixer --list-sinks | grep $BROWSER | awk '{print $4}' | tr -d ,)
#
#mute=$(pulsemixer --list-sinks | grep $BROWSER | awk '{print $8}' | tr -d ,)
#
#
#if (($mute==0)) 
#then
#    pulsemixer --mute --id $sink_input_id
#else
#    pulsemixer --unmute --id $sink_input_id
#fi

#echo $mute
#pulsemixer --list-sinks | awk '/Chromium/ {print $4}'| tr -d ,
