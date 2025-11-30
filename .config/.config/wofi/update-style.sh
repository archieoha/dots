#!/bin/bash

TEMPLATE="$HOME/.config/wofi/style.css.template"
OUTPUT="$HOME/.config/wofi/style.css"
WAL="$HOME/.cache/wal/colors.css"

# орлуулах функц
replace_color() {
    grep "$1" "$WAL" | cut -d ':' -f2 | tr -d ' ;'
}

cat "$TEMPLATE" \
  | sed -e "s|{{background}}|$(replace_color background)|g" \
        -e "s|{{foreground}}|$(replace_color foreground)|g" \
        -e "s|{{color0}}|$(replace_color color0)|g" \
        -e "s|{{color1}}|$(replace_color color1)|g" \
        -e "s|{{color2}}|$(replace_color color2)|g" \
        -e "s|{{color3}}|$(replace_color color3)|g" \
        -e "s|{{color4}}|$(replace_color color4)|g" \
        -e "s|{{color5}}|$(replace_color color5)|g" \
        -e "s|{{color6}}|$(replace_color color6)|g" \
        -e "s|{{color7}}|$(replace_color color7)|g" \
  > "$OUTPUT"

