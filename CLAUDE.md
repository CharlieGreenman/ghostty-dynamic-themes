# Ghostty Dynamic Themes — AI Agent Instructions

## Applying Themes

When the user asks to apply a Ghostty theme, run this single command:

```bash
/path/to/apply-theme.sh "Theme Name" --tty
```

That's it. The `--tty` flag walks up the process tree to find the real terminal device
and writes OSC escape sequences directly to it — bypassing the Bash tool's captured stdout.

If the repo isn't cloned locally, clone it first:

```bash
git clone https://github.com/CharlieGreenman/ghostty-dynamic-themes.git /tmp/ghostty-dynamic-themes
/tmp/ghostty-dynamic-themes/apply-theme.sh "Theme Name" --tty
```

### What does NOT work from an AI agent's Bash tool

- `printf '\033]...\007'` to stdout — captured as text, never reaches the terminal
- Redirecting to `/dev/tty` — not available in non-interactive subprocesses
- Editing `~/.config/ghostty/config` — requires a restart, doesn't apply live

### Theme names

Case-sensitive, matching Ghostty's built-in names exactly
(e.g., "Afterglow", "Banana Blueberry", "Catppuccin Frappe", "Gruvbox Dark").

Run `ghostty +list-themes` or browse `themes.md` for the full list of 463 themes.
