#!/bin/bash

# SCRIPT_DIR='/home/jdit/bin/startup'

sleep 2

for script in /home/jd1t/bin/startup/*.sh; do 
		bash "$script" 
done


#IMP
# multi_monitor_display
#
# picom --experimental-backends --xrender-sync-fence &
# #polybar_on_startup &
#
# # Reorder Monitor
# # Only for bspwm wm
# #bspc wm --reorder-monitors DP-1 DP-0
#
#
# numlockx
# #dunst &
# xfce4-power-manager &
# xbindkeys
# #feh --bg-scale Wallpapers/fireworks_by_bisbiswas_dempx5a.jpg Wallpapers/verdant_mountain_by_bisbiswas_derlepn.jpg
# #sxhkd &
#
# #Scripts
# #copyq_create &
# bin/volume-rocker 

## Refresh

#sleep 1s
#
#if [[ -e /tmp/first_time ]]
#    bspc wm -r
#    rm /tmp/first_time
