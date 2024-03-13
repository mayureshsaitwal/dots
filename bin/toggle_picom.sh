#!/bin/bash


if pgrep -x "picom" > /dev/null 2>&1 
then 
	killall -q picom
  notify.sh "Picom" "Dectivated" "" 2 update
else
	picom --experimental-backends --xrender-sync-fence &		
  notify.sh "Picom" "Activated" "" 2 update
fi



