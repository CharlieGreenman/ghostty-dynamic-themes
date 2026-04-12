# Ghostty Dynamic Themes — AI Agent Instructions

## Applying Themes

When the user asks to apply a Ghostty theme, the agent should apply it directly — do
not ask the user to run commands themselves.

### Method: Write to the parent TTY device

The Bash tool's stdout is captured and never reaches the terminal. To bypass this,
find the parent process's TTY and write escape sequences directly to it:

```bash
# 1. Find the TTY
TTY=/dev/$(ps -o tty= -p $PPID | tr -d ' ')

# 2. Read the theme and write OSC sequences to it
THEMES_DIR="/Applications/Ghostty.app/Contents/Resources/ghostty/themes"
while IFS= read -r line; do
  if [[ "$line" =~ ^palette[[:space:]]*=[[:space:]]*([0-9]+)=(.+) ]]; then
    printf '\033]4;%s;%s\007' "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}" > $TTY
  elif [[ "$line" =~ ^foreground[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]10;%s\007' "${BASH_REMATCH[1]}" > $TTY
  elif [[ "$line" =~ ^background[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]11;%s\007' "${BASH_REMATCH[1]}" > $TTY
  elif [[ "$line" =~ ^cursor-color[[:space:]]*=[[:space:]]*(.+) ]]; then
    printf '\033]12;%s\007' "${BASH_REMATCH[1]}" > $TTY
  fi
done < "$THEMES_DIR/Theme Name"
```

Or use the helper script with TTY redirection:

```bash
TTY=/dev/$(ps -o tty= -p $PPID | tr -d ' ')
./apply-theme.sh "Theme Name" > $TTY
```

### What does NOT work from the Bash tool

- `printf '\033]...\007'` to stdout (captured as text)
- Redirecting to `/dev/tty` (blocked in sandbox)
- Telling the user to copy-paste (defeats the purpose of an agent)

### Theme names

Theme names are case-sensitive and match Ghostty's built-in names exactly
(e.g., "Afterglow", "Catppuccin Frappe", "Gruvbox Dark").

Run `ghostty +list-themes` or browse `themes.md` for the full list of 463 themes.

## Theme format

Each theme in `themes.md` is a bash function that sets:

- `\033]4;N;#HEX\007` — palette color N (0-15)
- `\033]10;#HEX\007` — foreground
- `\033]11;#HEX\007` — background
- `\033]12;#HEX\007` — cursor color

## apply-theme.sh

The `apply-theme.sh` script reads theme files directly from Ghostty's bundled resources
(`/Applications/Ghostty.app/Contents/Resources/ghostty/themes/`) and outputs the
corresponding OSC escape sequences. It takes the exact theme name as its argument.
