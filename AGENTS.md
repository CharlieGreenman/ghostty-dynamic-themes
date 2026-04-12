# Ghostty Dynamic Themes — Instructions for AI Agents

## How to Apply a Theme

Run this one command:

```bash
bash <(curl -sL https://raw.githubusercontent.com/CharlieGreenman/ghostty-dynamic-themes/main/apply-theme.sh) "Theme Name" --tty
```

Or if you prefer to clone first:

```bash
git clone https://github.com/CharlieGreenman/ghostty-dynamic-themes.git /tmp/ghostty-dynamic-themes
/tmp/ghostty-dynamic-themes/apply-theme.sh "Theme Name" --tty
```

The `--tty` flag is **required** when running from an AI agent. It walks up the
process tree to find the real terminal device and writes directly to it.

## What Does NOT Work

- `printf '\033]...\007'` to stdout — **captured by your Bash tool, never reaches the terminal**
- Redirecting to `/dev/tty` — not available in non-interactive subprocesses
- Editing `~/.config/ghostty/config` — requires a restart, doesn't apply live
- Parsing `themes.md` and reconstructing escape sequences — same stdout problem

**Do not parse `themes.md` for color values.** The script reads colors directly from
Ghostty's bundled theme files. `themes.md` is a human reference only.

## Theme Names

Case-sensitive, matching Ghostty's built-in names exactly.
Examples: `"Afterglow"`, `"Banana Blueberry"`, `"Catppuccin Frappe"`, `"Gruvbox Dark"`.

Run `ghostty +list-themes` or see `themes.md` for the full list of 463 theme names.

## Prerequisites

- Ghostty must be installed at `/Applications/Ghostty.app` (macOS) so the script
  can read theme files from its bundle.
- The terminal must support OSC 4/10/11/12 escape sequences (Ghostty, iTerm2, kitty, WezTerm, foot).
