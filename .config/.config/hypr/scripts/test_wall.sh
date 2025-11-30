#!/bin/bash
set -euo pipefail

wallpapers_dir="$HOME/Pictures/wallpapers"
img="$(find "$wallpapers_dir" -type f \( -iname '*.jpg' -o -iname '*.png' \) | shuf -n 1)"

echo "Using wallpaper: $img"
swww init >/dev/null 2>&1 || true
swww img "$img" --transition-type=grow

