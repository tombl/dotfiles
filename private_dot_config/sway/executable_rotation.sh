#!/usr/bin/env bash

while IFS=$'\n' read -r line; do
    if [ "$(cat /tmp/rotation-locked)" = yes ]; then continue; fi
    case $(echo "$line" | awk '{print $4}') in
    normal)
        swaymsg output eDP-1 transform 0
        ;;
    right-up)
        swaymsg output eDP-1 transform 90
        ;;
    bottom-up)
        swaymsg output eDP-1 transform 180
        ;;
    left-up)
        swaymsg output eDP-1 transform 270
        ;;
    esac
done < <(stdbuf -oL monitor-sensor --accel)
