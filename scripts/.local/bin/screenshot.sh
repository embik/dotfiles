#!/bin/bash

screenshot=$(xdg-user-dir PICTURES)/Screenshots/$(date +'%Y-%m-%d-%H%M%S.png')

/usr/bin/grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') ${screenshot} \
    && notify-send -t 3000 'Screenshot taken' "saved to ${screenshot}"
