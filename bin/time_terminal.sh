#!/bin/zsh

NOD=$(xdo id -n "time_terminal")

bspc node "$NOD" --flag hidden
