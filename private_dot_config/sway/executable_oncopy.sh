#!/bin/sh
appid=$(swaymsg -t get_tree | jq -r 'recurse(.nodes[]) | select(.focused) | .app_id')
if [ "$appid" != org.keepassxc.KeePassXC ]; then
    clipman store --no-persist
fi
