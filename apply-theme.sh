#!/usr/bin/env bash
# Usage: ./apply-theme.sh <theme-name> [--tty]
# Applies a Ghostty theme to the current terminal using OSC escape sequences.
#
# --tty  Write escape sequences to the parent process's TTY instead of stdout.
#        Use this when stdout is captured (e.g., running from an AI agent's Bash tool).

THEMES_DIR="/Applications/Ghostty.app/Contents/Resources/ghostty/themes"

if [[ -z "$1" ]]; then
  echo "Usage: apply-theme.sh <theme-name> [--tty]"
  echo "Example: apply-theme.sh Afterglow"
  echo "         apply-theme.sh Afterglow --tty  # when stdout is captured"
  exit 1
fi

THEME_NAME="$1"
THEME_FILE="$THEMES_DIR/$THEME_NAME"
OUTPUT=""

if [[ "$2" == "--tty" ]]; then
  OUTPUT="/dev/$(ps -o tty= -p $PPID | tr -d ' ')"
  if [[ ! -c "$OUTPUT" ]]; then
    echo "Could not find parent TTY device"
    exit 1
  fi
fi

if [[ ! -f "$THEME_FILE" ]]; then
  echo "Theme not found: $THEME_NAME"
  echo "Run 'ghostty +list-themes' to see available themes."
  exit 1
fi

while IFS= read -r line; do
  if [[ "$line" =~ ^palette[[:space:]]*=[[:space:]]*([0-9]+)=(.+) ]]; then
    printf '\033]4;%s;%s\007' "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}" ${OUTPUT:+>"$OUTPUT"}
  elif [[ "$line" =~ ^foreground[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]10;%s\007' "${BASH_REMATCH[1]}" ${OUTPUT:+>"$OUTPUT"}
  elif [[ "$line" =~ ^background[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]11;%s\007' "${BASH_REMATCH[1]}" ${OUTPUT:+>"$OUTPUT"}
  elif [[ "$line" =~ ^cursor-color[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]12;%s\007' "${BASH_REMATCH[1]}" ${OUTPUT:+>"$OUTPUT"}
  fi
done < "$THEME_FILE"
