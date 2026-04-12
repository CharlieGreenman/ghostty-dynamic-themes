# Ghostty Dynamic Themes — AI Agent Instructions

## Applying Themes

When the user asks to apply a Ghostty theme, run this single command:

```bash
bash <(curl -sL https://raw.githubusercontent.com/CharlieGreenman/ghostty-dynamic-themes/main/apply-theme.sh) "Theme Name" --tty
```

Or if the repo is already cloned locally:

```bash
/path/to/apply-theme.sh "Theme Name" --tty
```

The `--tty` flag walks up the process tree to find the real terminal device
and writes OSC escape sequences directly to it — bypassing the Bash tool's captured stdout.

### What does NOT work from an AI agent's Bash tool

- `printf '\033]...\007'` to stdout — captured as text, never reaches the terminal
- Redirecting to `/dev/tty` — not available in non-interactive subprocesses
- Editing `~/.config/ghostty/config` — requires a restart, doesn't apply live
- Parsing `themes.md` for color values and reconstructing escape sequences — same stdout problem

**Do not parse `themes.md` for color values.** The script reads colors directly from
Ghostty's bundled theme files. `themes.md` is a name-only reference list.

### Theme names

Case-sensitive, matching Ghostty's built-in names exactly
(e.g., "Afterglow", "Banana Blueberry", "Catppuccin Frappe", "Gruvbox Dark").

Run `ghostty +list-themes` or browse `themes.md` for the full list of 463 themes.
