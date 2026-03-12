#!/bin/bash

ids=$(xinput list | grep 'Razer Razer Viper Mini' | awk '{print $7}' | grep 'id' | cut -c 1-3 --complement )


#echo $ids

for i in $ids
do
    COND=$(xinput list-props $i | grep 'libinput Accel Speed') 

    if [ ! -z "$COND" ] 
    then
        xinput set-prop "$i" 'libinput Accel Speed' -0.3
#        echo "Works..."
    fi
done
