#!/usr/bin/env bash

COLOR=$(niri msg pick-color | grep Hex | cut -c 6-)
if [ -z "$COLOR" ]; then
    exit 0
fi
echo -n "$COLOR" | wl-copy
ICON_PATH="/tmp/color_preview_${COLOR#\#}.png"
magick -size 64x64 xc:"$COLOR" "$ICON_PATH"
notify-send -u low -t 2500 -i "$ICON_PATH" "Выбор цвета" "Скопирован цвеи '$COLOR' в буфер обмена"
(sleep 3 && rm -f "$ICON_PATH") &
