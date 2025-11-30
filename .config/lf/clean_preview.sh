#!/bin/sh

# Kitty preview устгах
if command -v kitty >/dev/null 2>&1 && [ "$TERM" = "xterm-kitty" ]; then
    kitty +kitten icat --clear
fi

