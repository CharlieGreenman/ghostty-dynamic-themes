#!/usr/bin/env bash
# Usage: ./apply-theme.sh <theme-name>
# Applies a Ghostty theme to the current terminal using OSC escape sequences.

THEMES_DIR="/Applications/Ghostty.app/Contents/Resources/ghostty/themes"

if [[ -z "$1" ]]; then
  echo "Usage: apply-theme.sh <theme-name>"
  echo "Example: apply-theme.sh Afterglow"
  exit 1
fi

THEME_FILE="$THEMES_DIR/$1"

if [[ ! -f "$THEME_FILE" ]]; then
  echo "Theme not found: $1"
  echo "Run 'ghostty +list-themes' to see available themes."
  exit 1
fi

while IFS= read -r line; do
  if [[ "$line" =~ ^palette[[:space:]]*=[[:space:]]*([0-9]+)=(.+) ]]; then
    printf '\033]4;%s;%s\007' "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}"
  elif [[ "$line" =~ ^foreground[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]10;%s\007' "${BASH_REMATCH[1]}"
  elif [[ "$line" =~ ^background[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]11;%s\007' "${BASH_REMATCH[1]}"
  elif [[ "$line" =~ ^cursor-color[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]12;%s\007' "${BASH_REMATCH[1]}"
  fi
done < "$THEME_FILE"
