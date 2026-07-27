#!/usr/bin/env bash
brightness=$(brightnessctl get)
max=$(brightnessctl max)
percent=$((brightness * 100 / max))

if [ "$percent" -ge 80 ]; then
    icon="󰃠"
elif [ "$percent" -ge 50 ]; then
    icon="󰃟"
elif [ "$percent" -ge 20 ]; then
    icon="󰃞"
else
    icon="󰃝"
fi

echo "{\"text\": \"$icon $percent%\", \"tooltip\": \"Brightness: ${percent}%\"}"
