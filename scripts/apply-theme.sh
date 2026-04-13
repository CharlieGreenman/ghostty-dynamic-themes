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
  # Walk up the process tree to find the nearest ancestor with a real TTY.
  # When run as a child script (e.g., from an AI agent's Bash tool), $PPID
  # points to an intermediate shell with no TTY (tty = "??"). We need to
  # climb until we hit a process attached to a real /dev/ttysNNN.
  _pid=$$
  OUTPUT=""
  while [[ -n "$_pid" && "$_pid" != "0" ]]; do
    _tty=$(ps -o tty= -p "$_pid" 2>/dev/null | tr -d ' ')
    if [[ -n "$_tty" && "$_tty" != "??" && -c "/dev/$_tty" ]]; then
      OUTPUT="/dev/$_tty"
      break
    fi
    _pid=$(ps -o ppid= -p "$_pid" 2>/dev/null | tr -d ' ')
  done
  if [[ -z "$OUTPUT" ]]; then
    echo "Could not find a TTY device in the process tree"
    exit 1
  fi
fi

if [[ ! -f "$THEME_FILE" ]]; then
  echo "Theme not found: $THEME_NAME"
  echo "Run 'ghostty +list-themes' to see available themes."
  exit 1
fi

# If --tty, redirect all output to the TTY device; otherwise write to stdout.
if [[ -n "$OUTPUT" ]]; then
  exec 3>"$OUTPUT"
else
  exec 3>&1
fi

while IFS= read -r line; do
  if [[ "$line" =~ ^palette[[:space:]]*=[[:space:]]*([0-9]+)=(.+) ]]; then
    printf '\033]4;%s;%s\007' "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}" >&3
  elif [[ "$line" =~ ^foreground[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]10;%s\007' "${BASH_REMATCH[1]}" >&3
  elif [[ "$line" =~ ^background[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]11;%s\007' "${BASH_REMATCH[1]}" >&3
  elif [[ "$line" =~ ^cursor-color[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]12;%s\007' "${BASH_REMATCH[1]}" >&3
  fi
done < "$THEME_FILE"

exec 3>&-
