#!/bin/sh
jq '.openasar.css=$css' ~/.config/discord/settings.json --rawfile css ~/.local/share/flavours/discord.css >~/.config/discord/settings.json.tmp
mv ~/.config/discord/settings.json.tmp ~/.config/discord/settings.json
