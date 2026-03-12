#!/bin/bash

title="$1"
msg="$2"
slp="$3"
time="$4"


while [ $time -ne 0 ]
do 
  notify.sh "$title" "$msg" "" "" update
  ((time=time-1))
  ((msg=msg-1))
  sleep "$slp"s
done
