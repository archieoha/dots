#!/usr/bin/env bash
set -euo pipefail

############################
# Тохиргоо
############################
wallpapers_dir="$HOME/Pictures/wallpapers"
current_wp="$HOME/Pictures/current_wallpaper"
blurred_wp="$HOME/Pictures/current_wallpaper_blurred.png"
blur="50x30"
transition_type="grow"
log_file="/tmp/wallpaper.log"
firefox_profile="zhamiivf.default-release"  # таны Firefox профайлын нэр

############################
# Санамсаргүй зураг сонгох функц
############################
pick_random_wallpaper() {
    find "$wallpapers_dir" -maxdepth 1 -type f \
        \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) \
        | shuf -n1
}

############################
# Одоогийн зураг байхгүй бол шинэ сонгоно
############################
if [[ ! -f "$current_wp" ]]; then
    echo "$(pick_random_wallpaper)" > "$current_wp"
fi

############################
# init эсэхийг шалгаж шинэ зураг сонгох
############################
if [[ "${1:-}" == "init" ]]; then
    new_wp="$(cat "$current_wp")"
else
    new_wp="$(pick_random_wallpaper)"
fi

############################
# Pywal ажиллуулж өнгө тохируулна
############################
wal -q -i "$new_wp"

############################
# Firefox-д colors.css автоматаар хуулах
############################
ff_chrome="$HOME/.mozilla/firefox/$firefox_profile/chrome"
mkdir -p "$ff_chrome"
cp "$HOME/.cache/wal/colors.css" "$ff_chrome/colors.css"

############################
# Pywal colors.sh ачаалах
############################
set +u
source "$HOME/.cache/wal/colors.sh"
set -u

# fallback wallpaper хэрэв variable байхгүй бол
wallpaper="${wallpaper:-$new_wp}"

############################
# Waybar дахин ачаалах
############################
if [[ -x "$HOME/.config/waybar/launch.sh" ]]; then
    "$HOME/.config/waybar/launch.sh"
else
    pkill -x waybar && waybar &
fi

############################
# Cava өнгөний config symlink
############################
mkdir -p "$HOME/.config/cava"
ln -sf "$HOME/.cache/wal/cava-colors" "$HOME/.config/cava/config"

############################
# swww ашиглан ханын зураг солих
############################
if [[ "${XDG_SESSION_TYPE:-}" == "wayland" ]]; then
    swww init >/dev/null 2>&1 || true
    swww img "$wallpaper" --transition-type="$transition_type" --transition-pos=top-right
else
    echo "⚠️ Not in Wayland session — skipping swww" >> "$log_file"
fi

############################
# Blur үүсгэх
############################
if [[ "$blur" != "0x0" ]]; then
    magick "$wallpaper" -resize 1366x768\! -blur "$blur" "$blurred_wp"
    echo ":: Blurred wallpaper created at $blurred_wp" >> "$log_file"
fi

############################
# Одоогийн зураг хадгалах
############################
echo "$wallpaper" > "$current_wp"

############################
# Pywalfox өнгө автоматаар тохируулах
############################
if command -v pywalfox >/dev/null 2>&1; then
    tries=0
    while [[ $tries -lt 5 ]]; do
        if pywalfox auto >> /tmp/pywalfox_auto.log 2>&1; then
            echo "Pywalfox applied successfully" >> /tmp/pywalfox_auto.log
            break
        else
            echo "Pywalfox attempt $tries failed. Retrying in 1s..." >> /tmp/pywalfox_auto.log
            sleep 1
        fi
        ((tries++))
    done
else
    echo "Pywalfox command not found" >> /tmp/pywalfox_auto.log
fi

############################
# Firefox өнгийг бүрэн шинэчлэх
############################
if pgrep -x firefox >/dev/null; then
    echo "Restarting Firefox for updated userChrome..." >> "$log_file"
    pkill -x firefox
    sleep 1
    firefox &
fi


############################
# Log бичих
############################
echo "[$(date)] Wallpaper set: $wallpaper" >> "$log_file"

