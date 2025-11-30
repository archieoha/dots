#!/usr/bin/env bash
#
# Full Pywal Sync + Hyprland + Waybar + Wofi + Zsh + Bat + Firefox + Blur + swww
#

set -euo pipefail

############################
# Log тохиргоо
############################
log_file="/tmp/wallpaper.log"
exec > >(tee -a "$log_file") 2>&1
echo -e "\n=== [$(date)] Wallpaper script started ==="

############################
# Тохиргоо
############################
wallpapers_dir="$HOME/Pictures/wallpapers"
current_wp="$HOME/Pictures/current_wallpaper"
blurred_wp="$HOME/Pictures/current_wallpaper_blurred.png"
blur="50x30"
transition_type="grow"
firefox_profile="zhamiivf.default-release"

echo "Config loaded."

############################
# Санамсаргүй зураг сонгох
############################
pick_random_wallpaper() {
    find "$wallpapers_dir" -maxdepth 1 -type f \
        \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' -o -iname '*.webp' \) \
        | shuf -n1
}

############################
# Wallpaper сонгох
############################
if [[ ! -f "$current_wp" ]]; then
    new_wp="$(pick_random_wallpaper)"
else
    if [[ "${1:-}" == "init" ]]; then
        new_wp="$(cat "$current_wp")"
    else
        new_wp="$(pick_random_wallpaper)"
    fi
fi

echo "Using wallpaper: $new_wp"

############################
# Pywal → Colors
############################
echo "Running pywal..."
wal -q -i "$new_wp" || echo "⚠️ Pywal failed!"

#########################################
# 1. Hyprland Colors Sync (CORRECT)
#########################################
echo "Syncing Hyprland colors..."

WAL_HYPR="$HOME/.cache/wal/colors-hyprland.conf"
HYPR_DEST="$HOME/.config/hypr/colors.conf"

mkdir -p ~/.config/hypr/

if [[ -f "$WAL_HYPR" ]]; then
    cp "$WAL_HYPR" "$HYPR_DEST"
    echo "Hyprland colors copied."
else
    echo "⚠️ colors-hyprland.conf not found!"
fi

if pgrep -x Hyprland >/dev/null; then
    hyprctl reload || true
fi

#########################################
# 2. Waybar Sync
########################################
#########################################
# 2. Waybar Sync (SAFE: does not overwrite your custom style.css)
#########################################
echo "Syncing Waybar theme..."

WAYBAR_DIR="$HOME/.config/waybar"
WAYBAR_STYLE="$WAYBAR_DIR/style.css"            # Хувийн custom CSS
WAYBAR_WAL="$HOME/.cache/wal/colors-waybar.css" # Pywal colors
WAYBAR_COLORS="$WAYBAR_DIR/colors.css"          # Waybar-д зориулсан pywal output

# colors-waybar.css байвал Waybar/colors.css рүү хуулна
if [[ -f "$WAYBAR_WAL" ]]; then
    cp "$WAYBAR_WAL" "$WAYBAR_COLORS"
    echo "Waybar colors updated: $WAYBAR_COLORS"
else
    echo "⚠️ colors-waybar.css not found!"
fi

# style.css файлд @import байхгүй бол автоматаар нэмнэ
if ! grep -q '@import "colors.css";' "$WAYBAR_STYLE"; then
    echo '@import "colors.css";' | cat - "$WAYBAR_STYLE" > "$WAYBAR_STYLE.tmp"
    mv "$WAYBAR_STYLE.tmp" "$WAYBAR_STYLE"
    echo "Added @import to style.css"
fi

# Waybar-г дахин ачаалж ажиллуулах
pkill -x waybar || true
waybar >/dev/null 2>&1 &

#########################################
# 3. Wofi Sync
#########################################
echo "Syncing Wofi theme..."

WOFI_STYLE="$HOME/.config/wofi/style.css"
WOFI_WAL="$HOME/.cache/wal/colors-wofi.css"

if [[ -f "$WOFI_WAL" ]]; then
    cp "$WOFI_WAL" "$WOFI_STYLE"
else
    echo "⚠️ colors-wofi.css not found!"
fi

pkill -USR1 wofi 2>/dev/null || true

#########################################
# 4. Terminal (zsh) sync
#########################################
echo "Updating zsh colors..."

ZSHRC="$HOME/.zshrc"

if ! grep -q "source ~/.cache/wal/colors.sh" "$ZSHRC"; then
    echo '[[ -f ~/.cache/wal/colors.sh ]] && source ~/.cache/wal/colors.sh' >> "$ZSHRC"
fi

#########################################
# 5. Firefox (pywalfox) sync
#########################################
echo "Syncing Firefox..."

ff_chrome="$HOME/.mozilla/firefox/$firefox_profile/chrome"
mkdir -p "$ff_chrome"
cp "$HOME/.cache/wal/colors.css" "$ff_chrome/colors.css" || true

if command -v pywalfox >/dev/null 2>&1; then
    pywalfox update >/dev/null 2>&1 || true
fi

#########################################
# 6. swww wallpaper
#########################################
echo "Changing wallpaper with swww..."

if command -v swww >/dev/null 2>&1; then
    export XDG_SESSION_TYPE="wayland"
    export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
    swww init >/dev/null 2>&1 || true
    swww img "$new_wp" --transition-type="$transition_type" --transition-pos=center --transition-fps=60 || true
fi

#########################################
# 7. Blur wallpaper
#########################################
if [[ "$blur" != "0x0" ]]; then
    echo "Blurring wallpaper..."
    magick "$new_wp" -resize 1366x768\! -blur "$blur" "$blurred_wp" || true
fi

#########################################
# 8. Bat Theme Sync
#########################################
echo "Syncing bat theme..."

bat_theme_src="$HOME/.cache/wal/bat_theme.toml"
bat_theme_dir="$HOME/.config/bat/themes"

mkdir -p "$bat_theme_dir"

if [[ -f "$bat_theme_src" ]]; then
    cp "$bat_theme_src" "$bat_theme_dir/"
    bat cache --build >/dev/null 2>&1 || true
else
    echo "⚠️ bat_theme.toml not found!"
fi

#########################################
# Save Wallpaper
#########################################
echo "$new_wp" > "$current_wp"
echo "Saved wallpaper: $new_wp"
echo "=== [$(date)] Wallpaper script finished ==="

