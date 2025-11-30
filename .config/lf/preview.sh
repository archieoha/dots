#!/bin/sh

LOG_DIR="$HOME/.cache/lf"
mkdir -p "$LOG_DIR"
LOG_FILE="${LOG_DIR}/log.txt"
exec > "$LOG_FILE" 2>&1

echo "--- Script started at $(date) ---"
echo "File Path: $1"
echo "Preview Width: $2"
echo "Preview Height: $3"
echo "TERM: $TERM"
echo "------------------------------------"

FILE_PATH="$1"
PREVIEW_WIDTH="${2:-50}"
PREVIEW_HEIGHT="${3:-20}"
PREVIEW_X_COORD="$4"
PREVIEW_Y_COORD="$5"

MIME_TYPE=$(file -b --mime-type "$FILE_PATH")
echo "Detected MIME Type: $MIME_TYPE"

batorcat() {
    if command -v bat >/dev/null 2>&1; then
        bat --pager=never --color=always --style=changes --terminal-width "$PREVIEW_WIDTH" --line-range ":$PREVIEW_HEIGHT" "$1"
    else
        head -n "$PREVIEW_HEIGHT" "$1"
    fi
}


#!/bin/sh

# Kitty preview устгах
if command -v kitty >/dev/null 2>&1 && [ "$TERM" = "xterm-kitty" ]; then
    kitty +kitten icat --clear
fi


# PDF preview (thumbnail)
CACHE_DIR="$HOME/.cache/lf/pdfthumbs"
mkdir -p "$CACHE_DIR"
CACHE_FILE="${CACHE_DIR}/$(basename "$FILE_PATH").jpg"

case "$FILE_PATH" in
    *.jpg|*.jpeg|*.png|*.gif|*.webp|*.bmp)
        preview_image "$FILE_PATH"
        exit 0
        ;;
esac

case "$MIME_TYPE" in
    image/*)
        preview_image "$FILE_PATH"
        exit 0
        ;;
    application/pdf)
        if [ ! -f "$CACHE_FILE" ]; then
            echo "Creating thumbnail for PDF..."
            pdftoppm -jpeg -f 1 -singlefile "$FILE_PATH" "${CACHE_FILE%.jpg}" 2>/dev/null
        fi

        if [ -f "$CACHE_FILE" ]; then
            preview_image "$CACHE_FILE"
        else
            echo "PDF thumbnail failed. Showing text fallback."
            batorcat "$FILE_PATH"
        fi
        ;;
    *)
        echo "Fallback to text preview."
        if command -v lesspipe.sh >/dev/null 2>&1; then
            lesspipe.sh "$FILE_PATH"
        fi
        batorcat "$FILE_PATH"
        ;;
esac

echo "--- Script finished at $(date) ---"
exit 0

