---
name: apply-theme
description: Apply a specific Ghostty theme by name (e.g. /ghostty-dynamic-themes:apply-theme Catppuccin Frappe)
---

Apply the Ghostty theme "$ARGUMENTS" to the current terminal session.

Theme names are case-sensitive and must match Ghostty's built-in names exactly
(e.g., "Afterglow", "Banana Blueberry", "Catppuccin Frappe", "Gruvbox Dark").

```bash
bash "${CLAUDE_PLUGIN_ROOT}/scripts/apply-theme.sh" "$ARGUMENTS" --tty
```

After running, tell the user which theme was applied.
If the theme is not found, suggest running `/ghostty-dynamic-themes:random-theme` or checking the themes list.
