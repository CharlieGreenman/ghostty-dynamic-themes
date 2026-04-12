# Ghostty Dynamic Themes

Dynamically switch between **all 463 built-in Ghostty themes** at runtime using ANSI/OSC escape sequences — no config file changes, no restart required.

## Why?

Ghostty doesn't support per-tab theming. This repo turns **your shell into the theme engine** by setting colors via escape sequences. This means you can:

- Switch themes instantly in any open terminal
- Set different themes per tab, pane, or tmux window
- Auto-theme based on directory, environment, or SSH context
- Point an LLM at `themes.md` and ask it to apply any Ghostty theme by name

## What's in `themes.md`

A single markdown file containing a shell function for every built-in Ghostty theme (463 total). Each function sets:

| Escape Sequence | Purpose |
|---|---|
| `\033]4;N;#HEX\007` | Palette color N (0-15) |
| `\033]10;#HEX\007` | Foreground |
| `\033]11;#HEX\007` | Background |
| `\033]12;#HEX\007` | Cursor color |

These OSC sequences work in Ghostty, iTerm2, kitty, WezTerm, foot, and most modern terminals.

## Usage

### 1. Copy-paste a single theme

Open `themes.md`, find a theme, and paste the function into your terminal:

```bash
catppuccin_frappe() {
  printf '\033]4;0;#51576d\007'
  # ... (full palette)
  printf '\033]10;#c6d0f5\007'
  printf '\033]11;#303446\007'
  printf '\033]12;#f2d5cf\007'
}
catppuccin_frappe
```

### 2. Source themes from a script

Extract the functions you want into a `.sh` file and source it:

```bash
source ~/ghostty-dynamic-themes/my-themes.sh
gruvbox_dark
```

### 3. Auto-apply by context

Add to your `.zshrc` or `.bashrc`:

```bash
# Theme by directory
if [[ "$PWD" == *"prod"* ]]; then
  gruvbox_dark
elif [[ "$PWD" == *"dev"* ]]; then
  tokyo_night
fi

# Theme by environment
if [[ "$ENV" == "production" ]]; then
  rose_pine
fi

# Theme when SSH'd into a remote machine
if [[ -n "$SSH_CONNECTION" ]]; then
  dracula
fi
```

### 4. Use with an LLM

Point your LLM (Claude, GPT, etc.) at `themes.md` as context. Then ask:

> "Switch my terminal to Nord"

The LLM can output the exact escape sequences or shell function to apply.

## Best Practice: Color as Meaning

Use themes to encode context, not just aesthetics:

| Color Tone | Meaning |
|---|---|
| Red-tinted | Production |
| Yellow-tinted | Staging |
| Blue-tinted | Development |
| Green-tinted | Local |

## Limitations

- Does not persist across new terminal windows (re-apply on shell init)
- Some TUI apps override terminal colors while running
- Only sets the 16-color palette + fg/bg/cursor (not extended 256-color)

## How This Was Generated

All 463 themes were scraped from Ghostty's built-in theme files (`/Applications/Ghostty.app/Contents/Resources/ghostty/themes/`) and converted to shell functions using OSC escape sequences.

## License

The theme color values originate from the [Ghostty](https://github.com/ghostty-org/ghostty) project. This repo simply reformats them as escape sequences for dynamic use.
