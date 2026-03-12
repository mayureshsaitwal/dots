#!/usr/bin/env bash

LOG_FILE="/tmp/wifi-monitor.log"
latest_line=""

process_latest_line() {
    last_line=$(tail -n 1 "$LOG_FILE")
    # if [[ "$last_line" == *"disconnected"* ]]; then 
    if [[ "$last_line" == *"full"* ]]; then 
      notify-send "Wifi Connected..."
    elif [[ "$last_line" == *"none"* ]]; then
      notify-send "Wifi Disconnected..."
    fi
}

while true; do
  inotifywait -q -e modify "$LOG_FILE"
  sleep 1.2
  process_latest_line
done
