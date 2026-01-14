#! /usr/bin/env bash

STARTUP_DIR="$HOME/bin/startup"

if [[ -d STARTUP_DIR ]]; then
  notify-send "Startup Dir not exist"
  exit 1
fi

for script in "$STARTUP_DIR"/*; do

  if [[ -f "$script" && -x "$script" ]]; then
    "$script" & > /dev/null 2>&1
  fi
done

notify-send "Running Startup Scripts"
