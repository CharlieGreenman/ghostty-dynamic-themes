---
name: theme
description: Apply a Ghostty terminal theme. Use with a theme name (e.g. /theme Afterglow) or no argument for a random theme.
---

Apply a Ghostty theme to the current terminal.

If `$ARGUMENTS` is provided, use it as the theme name.
If `$ARGUMENTS` is empty, pick a random theme.

```bash
REPO_ROOT="$(git rev-parse --show-toplevel)"
if [ -n "$ARGUMENTS" ]; then
  THEME="$ARGUMENTS"
else
  THEME="$(grep '^- ' "$REPO_ROOT/themes.md" | sed 's/^- //' | shuf -n 1)"
fi
bash "$REPO_ROOT/apply-theme.sh" "$THEME" --tty
```

After running, tell the user which theme was applied.
