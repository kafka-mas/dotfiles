#!/bin/bash

updates=$(checkupdates 2> /dev/null |wc -l)
echo $updates

printf '{"text": "%s", "alt": "%s", "tooltip": "%s Updates"}' "$updates" "$updates" "$updates"

