#!/usr/bin/env bash
#
#  change_theme.sh  –  Win+W дарсны дараа
#  1) санамсаргүй ханын зураг сонгоно
#  2) pywal‑аар өнгө гаргана
#  3) Hyprland / Waybar‑аа шинээр уншуулна
#  4) Firefox‑ийн theme‑ийг шинэ өнгөөр үүсгэнэ
#  5) дууссаныг notification‑оор мэдэгдэнэ
#
#  ←  Хэрэв хэрэгтэй бол WALL_DIR, SATURATION хувьсагчуудыг өөрчлөөрэй

set -e

### ────────────────── Тохируулга ──────────────────
WALL_DIR="$HOME/Pictures/wallpapers"      # Ханын зургуудын хавтас
SATURATION=0.8                            # pywal‑ын saturate утга
FIREFOX_PROFILE="$(find "$HOME/.mozilla/firefox" -maxdepth 1 -type d -name '*.default-release' | head -n1)"
CHROME_DIR="$FIREFOX_PROFILE/chrome"
COLORS_CSS="$HOME/.cache/wal/colors.css"
### ────────────────────────────────────────────────

# 1) Санамсаргүй зураг сонго
WALL="$(find "$WALL_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) | shuf -n1)"

# 2) pywal – зураг → өнгө (ханын зургийг ч солино)
wal -i "$WALL" --saturate "$SATURATION" -n >/dev/null

# 3) Hyprland‑аас хамаарах зүйлсийг шинээр унших
hyprctl reload >/dev/null 2>&1           # Hyprland
pkill -SIGUSR2 waybar  2>/dev/null || true   # Waybar (хэрэв ашигладаг бол)

# 4) Firefox‑ийн theme үүсгэх / шинэчлэх
mkdir -p "$CHROME_DIR"
cp "$COLORS_CSS" "$CHROME_DIR/colors.css"

cat > "$CHROME_DIR/userChrome.css" <<'EOF'
@import url("colors.css");

/* ───── pywal өнгөнүүдийг Firefox UI‑д map‑лах ───── */
:root {
  --toolbar-bgcolor: var(--background) !important;
  --toolbar-color:  var(--foreground) !important;
}

.tabbrowser-tab {
  background-color: var(--color0) !important;
  color:            var(--foreground) !important;
}

#urlbar, #searchbar {
  background-color: var(--color1) !important;
  color:            var(--foreground) !important;
}

menupopup {
  background-color: var(--color0) !important;
  color:            var(--foreground) !important;
}
/* ───────────────────────────────────────────────── */
EOF

# userChrome.css‑ийг “шинэчлэгдлээ” гэж Firefox‑т мэдэгдэх
touch "$CHROME_DIR/userChrome.css"

# (Хэрвээ Firefox‑ийг автоматаар дахин асаахыг хүсвэл доорх 2 мөрийг uncomment хийнэ.)
# pkill -TERM firefox && setsid firefox >/dev/null 2>&1 &

# 5) Notification
notify-send "Theme switched 🎨" "Wallpaper: $(basename "$WALL")"

