---
name: random-theme
description: Apply a random Ghostty theme from all 463 built-in themes
---

Pick a random Ghostty theme and apply it to the current terminal.

```bash
THEME=$(grep '^- ' "${CLAUDE_PLUGIN_ROOT}/themes.md" | sed 's/^- //' | awk 'BEGIN{srand()}{a[NR]=$0}END{print a[int(rand()*NR)+1]}')
bash "${CLAUDE_PLUGIN_ROOT}/scripts/apply-theme.sh" "$THEME" --tty
echo "Applied theme: $THEME"
```

Tell the user which theme was applied.
