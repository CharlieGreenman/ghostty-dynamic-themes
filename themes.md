# Ghostty Dynamic Themes — Complete Reference (Escape Sequence Based)

> **AI Agents: DO NOT copy-paste printf commands from this file and run them directly.**
> Your Bash tool's stdout is captured — the escape sequences will never reach the terminal.
> Instead, use the `apply-theme.sh` script included in this repo with the `--tty` flag:
>
> ```bash
> # Clone the repo if you don't have it locally:
> git clone https://github.com/CharlieGreenman/ghostty-dynamic-themes.git /tmp/ghostty-dynamic-themes
>
> # Apply a theme (--tty writes directly to the parent terminal device):
> /tmp/ghostty-dynamic-themes/apply-theme.sh "Theme Name" --tty
> ```
>
> Theme names are case-sensitive and match the `### Heading` names below (e.g., "Banana Blueberry", "Catppuccin Frappe").
> The script reads theme data from Ghostty's bundled files at `/Applications/Ghostty.app/Contents/Resources/ghostty/themes/`.

This file contains **every built-in Ghostty theme** converted to shell functions that use
ANSI/OSC escape sequences. Source your preferred theme to instantly restyle any terminal
that supports OSC 10/11/12 and OSC 4 (Ghostty, iTerm2, kitty, WezTerm, foot, etc.).

## Quick Start (Humans)

```bash
# Source this file (or paste a single function) then call the function:
source themes.sh
catppuccin_frappe
```

## How It Works

| Escape Sequence | Purpose |
|---|---|
| `\033]10;#HEX\007` | Set foreground |
| `\033]11;#HEX\007` | Set background |
| `\033]12;#HEX\007` | Set cursor color |
| `\033]4;N;#HEX\007` | Set palette color N (0-15) |

---

### 0x96f

```bash
0x96f() {
  printf '\033]4;0;#262427\007'
  printf '\033]4;1;#ff666d\007'
  printf '\033]4;2;#b3e03a\007'
  printf '\033]4;3;#ffc739\007'
  printf '\033]4;4;#00cde8\007'
  printf '\033]4;5;#a392e8\007'
  printf '\033]4;6;#9deaf6\007'
  printf '\033]4;7;#fcfcfa\007'
  printf '\033]4;8;#545452\007'
  printf '\033]4;9;#ff7e83\007'
  printf '\033]4;10;#bee55e\007'
  printf '\033]4;11;#ffd05e\007'
  printf '\033]4;12;#1bd5eb\007'
  printf '\033]4;13;#b0a3eb\007'
  printf '\033]4;14;#acedf8\007'
  printf '\033]4;15;#fcfcfa\007'
  printf '\033]10;#fcfcfa\007'
  printf '\033]11;#262427\007'
  printf '\033]12;#fcfcfa\007'
}
```

### 12-bit Rainbow

```bash
12_bit_rainbow() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#a03050\007'
  printf '\033]4;2;#40d080\007'
  printf '\033]4;3;#e09040\007'
  printf '\033]4;4;#3060b0\007'
  printf '\033]4;5;#603090\007'
  printf '\033]4;6;#0090c0\007'
  printf '\033]4;7;#dbded8\007'
  printf '\033]4;8;#685656\007'
  printf '\033]4;9;#c06060\007'
  printf '\033]4;10;#90d050\007'
  printf '\033]4;11;#e0d000\007'
  printf '\033]4;12;#00b0c0\007'
  printf '\033]4;13;#801070\007'
  printf '\033]4;14;#20b0c0\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#feffff\007'
  printf '\033]11;#040404\007'
  printf '\033]12;#e0d000\007'
}
```

### 3024 Day

```bash
3024_day() {
  printf '\033]4;0;#090300\007'
  printf '\033]4;1;#db2d20\007'
  printf '\033]4;2;#01a252\007'
  printf '\033]4;3;#caba00\007'
  printf '\033]4;4;#01a0e4\007'
  printf '\033]4;5;#a16a94\007'
  printf '\033]4;6;#8fbece\007'
  printf '\033]4;7;#a5a2a2\007'
  printf '\033]4;8;#5c5855\007'
  printf '\033]4;9;#dbaec3\007'
  printf '\033]4;10;#3a3432\007'
  printf '\033]4;11;#4a4543\007'
  printf '\033]4;12;#807d7c\007'
  printf '\033]4;13;#bcbbba\007'
  printf '\033]4;14;#cdab53\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#4a4543\007'
  printf '\033]11;#f7f7f7\007'
  printf '\033]12;#4a4543\007'
}
```

### 3024 Night

```bash
3024_night() {
  printf '\033]4;0;#090300\007'
  printf '\033]4;1;#db2d20\007'
  printf '\033]4;2;#01a252\007'
  printf '\033]4;3;#fded02\007'
  printf '\033]4;4;#01a0e4\007'
  printf '\033]4;5;#a16a94\007'
  printf '\033]4;6;#b5e4f4\007'
  printf '\033]4;7;#a5a2a2\007'
  printf '\033]4;8;#5c5855\007'
  printf '\033]4;9;#e8bbd0\007'
  printf '\033]4;10;#47413f\007'
  printf '\033]4;11;#4a4543\007'
  printf '\033]4;12;#807d7c\007'
  printf '\033]4;13;#d6d5d4\007'
  printf '\033]4;14;#cdab53\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#a5a2a2\007'
  printf '\033]11;#090300\007'
  printf '\033]12;#a5a2a2\007'
}
```

### Aardvark Blue

```bash
aardvark_blue() {
  printf '\033]4;0;#191919\007'
  printf '\033]4;1;#aa342e\007'
  printf '\033]4;2;#4b8c0f\007'
  printf '\033]4;3;#dbba00\007'
  printf '\033]4;4;#1370d3\007'
  printf '\033]4;5;#c43ac3\007'
  printf '\033]4;6;#008eb0\007'
  printf '\033]4;7;#bebebe\007'
  printf '\033]4;8;#525252\007'
  printf '\033]4;9;#f05b50\007'
  printf '\033]4;10;#95dc55\007'
  printf '\033]4;11;#ffe763\007'
  printf '\033]4;12;#60a4ec\007'
  printf '\033]4;13;#e26be2\007'
  printf '\033]4;14;#60b6cb\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#dddddd\007'
  printf '\033]11;#102040\007'
  printf '\033]12;#007acc\007'
}
```

### Abernathy

```bash
abernathy() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cd0000\007'
  printf '\033]4;2;#00cd00\007'
  printf '\033]4;3;#cdcd00\007'
  printf '\033]4;4;#1093f5\007'
  printf '\033]4;5;#cd00cd\007'
  printf '\033]4;6;#00cdcd\007'
  printf '\033]4;7;#faebd7\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#ff0000\007'
  printf '\033]4;10;#00ff00\007'
  printf '\033]4;11;#ffff00\007'
  printf '\033]4;12;#11b5f6\007'
  printf '\033]4;13;#ff00ff\007'
  printf '\033]4;14;#00ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#eeeeec\007'
  printf '\033]11;#111416\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Adventure

```bash
adventure() {
  printf '\033]4;0;#040404\007'
  printf '\033]4;1;#d84a33\007'
  printf '\033]4;2;#5da602\007'
  printf '\033]4;3;#eebb6e\007'
  printf '\033]4;4;#417ab3\007'
  printf '\033]4;5;#e5c499\007'
  printf '\033]4;6;#bdcfe5\007'
  printf '\033]4;7;#dbded8\007'
  printf '\033]4;8;#685656\007'
  printf '\033]4;9;#d76b42\007'
  printf '\033]4;10;#99b52c\007'
  printf '\033]4;11;#ffb670\007'
  printf '\033]4;12;#97d7ef\007'
  printf '\033]4;13;#aa7900\007'
  printf '\033]4;14;#bdcfe5\007'
  printf '\033]4;15;#e4d5c7\007'
  printf '\033]10;#feffff\007'
  printf '\033]11;#040404\007'
  printf '\033]12;#feffff\007'
}
```

### Adventure Time

```bash
adventure_time() {
  printf '\033]4;0;#050404\007'
  printf '\033]4;1;#bd0013\007'
  printf '\033]4;2;#4ab118\007'
  printf '\033]4;3;#e7741e\007'
  printf '\033]4;4;#0f4ac6\007'
  printf '\033]4;5;#665993\007'
  printf '\033]4;6;#70a598\007'
  printf '\033]4;7;#f8dcc0\007'
  printf '\033]4;8;#4e7cbf\007'
  printf '\033]4;9;#fc5f5a\007'
  printf '\033]4;10;#9eff6e\007'
  printf '\033]4;11;#efc11a\007'
  printf '\033]4;12;#1997c6\007'
  printf '\033]4;13;#9b5953\007'
  printf '\033]4;14;#c8faf4\007'
  printf '\033]4;15;#f6f5fb\007'
  printf '\033]10;#f8dcc0\007'
  printf '\033]11;#1f1d45\007'
  printf '\033]12;#efbf38\007'
}
```

### Adwaita

```bash
adwaita() {
  printf '\033]4;0;#241f31\007'
  printf '\033]4;1;#c01c28\007'
  printf '\033]4;2;#2ec27e\007'
  printf '\033]4;3;#e8b504\007'
  printf '\033]4;4;#1e78e4\007'
  printf '\033]4;5;#9841bb\007'
  printf '\033]4;6;#0ab9dc\007'
  printf '\033]4;7;#c0bfbc\007'
  printf '\033]4;8;#5e5c64\007'
  printf '\033]4;9;#ed333b\007'
  printf '\033]4;10;#4ad67c\007'
  printf '\033]4;11;#d2be36\007'
  printf '\033]4;12;#51a1ff\007'
  printf '\033]4;13;#c061cb\007'
  printf '\033]4;14;#4fd2fd\007'
  printf '\033]4;15;#f6f5f4\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Adwaita Dark

```bash
adwaita_dark() {
  printf '\033]4;0;#241f31\007'
  printf '\033]4;1;#c01c28\007'
  printf '\033]4;2;#2ec27e\007'
  printf '\033]4;3;#f5c211\007'
  printf '\033]4;4;#1e78e4\007'
  printf '\033]4;5;#9841bb\007'
  printf '\033]4;6;#0ab9dc\007'
  printf '\033]4;7;#c0bfbc\007'
  printf '\033]4;8;#5e5c64\007'
  printf '\033]4;9;#ed333b\007'
  printf '\033]4;10;#57e389\007'
  printf '\033]4;11;#f8e45c\007'
  printf '\033]4;12;#51a1ff\007'
  printf '\033]4;13;#c061cb\007'
  printf '\033]4;14;#4fd2fd\007'
  printf '\033]4;15;#f6f5f4\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1d1d20\007'
  printf '\033]12;#ffffff\007'
}
```

### Afterglow

```bash
afterglow() {
  printf '\033]4;0;#151515\007'
  printf '\033]4;1;#ac4142\007'
  printf '\033]4;2;#7e8e50\007'
  printf '\033]4;3;#e5b567\007'
  printf '\033]4;4;#6c99bb\007'
  printf '\033]4;5;#9f4e85\007'
  printf '\033]4;6;#7dd6cf\007'
  printf '\033]4;7;#d0d0d0\007'
  printf '\033]4;8;#505050\007'
  printf '\033]4;9;#ac4142\007'
  printf '\033]4;10;#7e8e50\007'
  printf '\033]4;11;#e5b567\007'
  printf '\033]4;12;#6c99bb\007'
  printf '\033]4;13;#9f4e85\007'
  printf '\033]4;14;#7dd6cf\007'
  printf '\033]4;15;#f5f5f5\007'
  printf '\033]10;#d0d0d0\007'
  printf '\033]11;#212121\007'
  printf '\033]12;#d0d0d0\007'
}
```

### Aizen Dark

```bash
aizen_dark() {
  printf '\033]4;0;#1a1a1a\007'
  printf '\033]4;1;#f08898\007'
  printf '\033]4;2;#a4e09c\007'
  printf '\033]4;3;#f5dea4\007'
  printf '\033]4;4;#84b4f8\007'
  printf '\033]4;5;#c8a2f4\007'
  printf '\033]4;6;#90dcd0\007'
  printf '\033]4;7;#d0d6f0\007'
  printf '\033]4;8;#444444\007'
  printf '\033]4;9;#f08898\007'
  printf '\033]4;10;#a4e09c\007'
  printf '\033]4;11;#f5dea4\007'
  printf '\033]4;12;#84b4f8\007'
  printf '\033]4;13;#c8a2f4\007'
  printf '\033]4;14;#90dcd0\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d0d6f0\007'
  printf '\033]11;#1a1a1a\007'
  printf '\033]12;#f8b080\007'
}
```

### Aizen Light

```bash
aizen_light() {
  printf '\033]4;0;#f0f2f6\007'
  printf '\033]4;1;#d00c36\007'
  printf '\033]4;2;#3e9e28\007'
  printf '\033]4;3;#dd8c1a\007'
  printf '\033]4;4;#1c64f2\007'
  printf '\033]4;5;#8636ec\007'
  printf '\033]4;6;#159096\007'
  printf '\033]4;7;#4a4d66\007'
  printf '\033]4;8;#adb2bc\007'
  printf '\033]4;9;#d00c36\007'
  printf '\033]4;10;#3e9e28\007'
  printf '\033]4;11;#dd8c1a\007'
  printf '\033]4;12;#1c64f2\007'
  printf '\033]4;13;#8636ec\007'
  printf '\033]4;14;#159096\007'
  printf '\033]4;15;#4a4d66\007'
  printf '\033]10;#4a4d66\007'
  printf '\033]11;#f0f2f6\007'
  printf '\033]12;#fc6008\007'
}
```

### Alabaster

```bash
alabaster() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#aa3731\007'
  printf '\033]4;2;#448c27\007'
  printf '\033]4;3;#cb9000\007'
  printf '\033]4;4;#325cc0\007'
  printf '\033]4;5;#7a3e9d\007'
  printf '\033]4;6;#0083b2\007'
  printf '\033]4;7;#b7b7b7\007'
  printf '\033]4;8;#777777\007'
  printf '\033]4;9;#f05050\007'
  printf '\033]4;10;#60cb00\007'
  printf '\033]4;11;#f2af50\007'
  printf '\033]4;12;#007acc\007'
  printf '\033]4;13;#e64ce6\007'
  printf '\033]4;14;#00aacb\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#f7f7f7\007'
  printf '\033]12;#007acc\007'
}
```

### Alien Blood

```bash
alien_blood() {
  printf '\033]4;0;#112616\007'
  printf '\033]4;1;#7f2b27\007'
  printf '\033]4;2;#2f7e25\007'
  printf '\033]4;3;#717f24\007'
  printf '\033]4;4;#2f6a7f\007'
  printf '\033]4;5;#47587f\007'
  printf '\033]4;6;#327f77\007'
  printf '\033]4;7;#647d75\007'
  printf '\033]4;8;#3c4812\007'
  printf '\033]4;9;#e08009\007'
  printf '\033]4;10;#18e000\007'
  printf '\033]4;11;#bde000\007'
  printf '\033]4;12;#00aae0\007'
  printf '\033]4;13;#0058e0\007'
  printf '\033]4;14;#00e0c4\007'
  printf '\033]4;15;#73fa91\007'
  printf '\033]10;#637d75\007'
  printf '\033]11;#0f1610\007'
  printf '\033]12;#73fa91\007'
}
```

### Andromeda

```bash
andromeda() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cd3131\007'
  printf '\033]4;2;#05bc79\007'
  printf '\033]4;3;#e5e512\007'
  printf '\033]4;4;#2472c8\007'
  printf '\033]4;5;#bc3fbc\007'
  printf '\033]4;6;#0fa8cd\007'
  printf '\033]4;7;#e5e5e5\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#cd3131\007'
  printf '\033]4;10;#05bc79\007'
  printf '\033]4;11;#e5e512\007'
  printf '\033]4;12;#2472c8\007'
  printf '\033]4;13;#bc3fbc\007'
  printf '\033]4;14;#0fa8cd\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#e5e5e5\007'
  printf '\033]11;#262a33\007'
  printf '\033]12;#f8f8f0\007'
}
```

### Apple Classic

```bash
apple_classic() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c91b00\007'
  printf '\033]4;2;#00c200\007'
  printf '\033]4;3;#c7c400\007'
  printf '\033]4;4;#1c3fe1\007'
  printf '\033]4;5;#ca30c7\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#5ffa68\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#ff77ff\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d5a200\007'
  printf '\033]11;#2c2b2b\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Apple System Colors

```bash
apple_system_colors() {
  printf '\033]4;0;#1a1a1a\007'
  printf '\033]4;1;#cc372e\007'
  printf '\033]4;2;#26a439\007'
  printf '\033]4;3;#cdac08\007'
  printf '\033]4;4;#0869cb\007'
  printf '\033]4;5;#9647bf\007'
  printf '\033]4;6;#479ec2\007'
  printf '\033]4;7;#98989d\007'
  printf '\033]4;8;#464646\007'
  printf '\033]4;9;#ff453a\007'
  printf '\033]4;10;#32d74b\007'
  printf '\033]4;11;#ffd60a\007'
  printf '\033]4;12;#0a84ff\007'
  printf '\033]4;13;#bf5af2\007'
  printf '\033]4;14;#76d6ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1e1e1e\007'
  printf '\033]12;#98989d\007'
}
```

### Apple System Colors Light

```bash
apple_system_colors_light() {
  printf '\033]4;0;#1a1a1a\007'
  printf '\033]4;1;#cc372e\007'
  printf '\033]4;2;#26a439\007'
  printf '\033]4;3;#cdac08\007'
  printf '\033]4;4;#0869cb\007'
  printf '\033]4;5;#9647bf\007'
  printf '\033]4;6;#479ec2\007'
  printf '\033]4;7;#98989d\007'
  printf '\033]4;8;#464646\007'
  printf '\033]4;9;#ff453a\007'
  printf '\033]4;10;#32d74b\007'
  printf '\033]4;11;#e5bc00\007'
  printf '\033]4;12;#0a84ff\007'
  printf '\033]4;13;#bf5af2\007'
  printf '\033]4;14;#69c9f2\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#feffff\007'
  printf '\033]12;#98989d\007'
}
```

### Arcoiris

```bash
arcoiris() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#da2700\007'
  printf '\033]4;2;#12c258\007'
  printf '\033]4;3;#ffc656\007'
  printf '\033]4;4;#518bfc\007'
  printf '\033]4;5;#e37bd9\007'
  printf '\033]4;6;#63fad5\007'
  printf '\033]4;7;#bab2b2\007'
  printf '\033]4;8;#777777\007'
  printf '\033]4;9;#ffb9b9\007'
  printf '\033]4;10;#e3f6aa\007'
  printf '\033]4;11;#ffddaa\007'
  printf '\033]4;12;#b3e8f3\007'
  printf '\033]4;13;#cbbaf9\007'
  printf '\033]4;14;#bcffc7\007'
  printf '\033]4;15;#efefef\007'
  printf '\033]10;#eee4d9\007'
  printf '\033]11;#201f1e\007'
  printf '\033]12;#872929\007'
}
```

### Ardoise

```bash
ardoise() {
  printf '\033]4;0;#2c2c2c\007'
  printf '\033]4;1;#d3322d\007'
  printf '\033]4;2;#588b35\007'
  printf '\033]4;3;#fca93a\007'
  printf '\033]4;4;#2465c2\007'
  printf '\033]4;5;#7332b4\007'
  printf '\033]4;6;#64e1b8\007'
  printf '\033]4;7;#f7f7f7\007'
  printf '\033]4;8;#535353\007'
  printf '\033]4;9;#fa5852\007'
  printf '\033]4;10;#8dc252\007'
  printf '\033]4;11;#ffea51\007'
  printf '\033]4;12;#6ab5f8\007'
  printf '\033]4;13;#be68ca\007'
  printf '\033]4;14;#89ffdb\007'
  printf '\033]4;15;#fefefe\007'
  printf '\033]10;#eaeaea\007'
  printf '\033]11;#1e1e1e\007'
  printf '\033]12;#f7f7f7\007'
}
```

### Argonaut

```bash
argonaut() {
  printf '\033]4;0;#232323\007'
  printf '\033]4;1;#ff000f\007'
  printf '\033]4;2;#8ce10b\007'
  printf '\033]4;3;#ffb900\007'
  printf '\033]4;4;#008df8\007'
  printf '\033]4;5;#6d43a6\007'
  printf '\033]4;6;#00d8eb\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#444444\007'
  printf '\033]4;9;#ff2740\007'
  printf '\033]4;10;#abe15b\007'
  printf '\033]4;11;#ffd242\007'
  printf '\033]4;12;#0092ff\007'
  printf '\033]4;13;#9a5feb\007'
  printf '\033]4;14;#67fff0\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#fffaf4\007'
  printf '\033]11;#0e1019\007'
  printf '\033]12;#ff0018\007'
}
```

### Arthur

```bash
arthur() {
  printf '\033]4;0;#3d352a\007'
  printf '\033]4;1;#cd5c5c\007'
  printf '\033]4;2;#86af80\007'
  printf '\033]4;3;#e8ae5b\007'
  printf '\033]4;4;#6495ed\007'
  printf '\033]4;5;#deb887\007'
  printf '\033]4;6;#b0c4de\007'
  printf '\033]4;7;#bbaa99\007'
  printf '\033]4;8;#554444\007'
  printf '\033]4;9;#cc5533\007'
  printf '\033]4;10;#88aa22\007'
  printf '\033]4;11;#ffa75d\007'
  printf '\033]4;12;#87ceeb\007'
  printf '\033]4;13;#996600\007'
  printf '\033]4;14;#b0c4de\007'
  printf '\033]4;15;#ddccbb\007'
  printf '\033]10;#ddeedd\007'
  printf '\033]11;#1c1c1c\007'
  printf '\033]12;#e2bbef\007'
}
```

### Atelier Sulphurpool

```bash
atelier_sulphurpool() {
  printf '\033]4;0;#202746\007'
  printf '\033]4;1;#c94922\007'
  printf '\033]4;2;#ac9739\007'
  printf '\033]4;3;#c08b30\007'
  printf '\033]4;4;#3d8fd1\007'
  printf '\033]4;5;#6679cc\007'
  printf '\033]4;6;#22a2c9\007'
  printf '\033]4;7;#979db4\007'
  printf '\033]4;8;#6b7394\007'
  printf '\033]4;9;#c76b29\007'
  printf '\033]4;10;#4f587c\007'
  printf '\033]4;11;#5e6687\007'
  printf '\033]4;12;#898ea4\007'
  printf '\033]4;13;#dfe2f1\007'
  printf '\033]4;14;#9c637a\007'
  printf '\033]4;15;#f5f7ff\007'
  printf '\033]10;#979db4\007'
  printf '\033]11;#202746\007'
  printf '\033]12;#979db4\007'
}
```

### Atom

```bash
atom() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fd5ff1\007'
  printf '\033]4;2;#87c38a\007'
  printf '\033]4;3;#ffd7b1\007'
  printf '\033]4;4;#85befd\007'
  printf '\033]4;5;#b9b6fc\007'
  printf '\033]4;6;#85befd\007'
  printf '\033]4;7;#e0e0e0\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#fd5ff1\007'
  printf '\033]4;10;#94fa36\007'
  printf '\033]4;11;#f5ffa8\007'
  printf '\033]4;12;#96cbfe\007'
  printf '\033]4;13;#b9b6fc\007'
  printf '\033]4;14;#85befd\007'
  printf '\033]4;15;#e0e0e0\007'
  printf '\033]10;#c5c8c6\007'
  printf '\033]11;#161719\007'
  printf '\033]12;#d0d0d0\007'
}
```

### Atom One Dark

```bash
atom_one_dark() {
  printf '\033]4;0;#21252b\007'
  printf '\033]4;1;#e06c75\007'
  printf '\033]4;2;#98c379\007'
  printf '\033]4;3;#e5c07b\007'
  printf '\033]4;4;#61afef\007'
  printf '\033]4;5;#c678dd\007'
  printf '\033]4;6;#56b6c2\007'
  printf '\033]4;7;#abb2bf\007'
  printf '\033]4;8;#767676\007'
  printf '\033]4;9;#e06c75\007'
  printf '\033]4;10;#98c379\007'
  printf '\033]4;11;#e5c07b\007'
  printf '\033]4;12;#61afef\007'
  printf '\033]4;13;#c678dd\007'
  printf '\033]4;14;#56b6c2\007'
  printf '\033]4;15;#abb2bf\007'
  printf '\033]10;#abb2bf\007'
  printf '\033]11;#21252b\007'
  printf '\033]12;#abb2bf\007'
}
```

### Atom One Light

```bash
atom_one_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#de3e35\007'
  printf '\033]4;2;#3f953a\007'
  printf '\033]4;3;#d2b67c\007'
  printf '\033]4;4;#2f5af3\007'
  printf '\033]4;5;#950095\007'
  printf '\033]4;6;#3f953a\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#de3e35\007'
  printf '\033]4;10;#3f953a\007'
  printf '\033]4;11;#d2b67c\007'
  printf '\033]4;12;#2f5af3\007'
  printf '\033]4;13;#a00095\007'
  printf '\033]4;14;#3f953a\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#2a2c33\007'
  printf '\033]11;#f9f9f9\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Aura

```bash
aura() {
  printf '\033]4;0;#110f18\007'
  printf '\033]4;1;#ff6767\007'
  printf '\033]4;2;#61ffca\007'
  printf '\033]4;3;#ffca85\007'
  printf '\033]4;4;#a277ff\007'
  printf '\033]4;5;#a277ff\007'
  printf '\033]4;6;#61ffca\007'
  printf '\033]4;7;#edecee\007'
  printf '\033]4;8;#4d4d4d\007'
  printf '\033]4;9;#ffca85\007'
  printf '\033]4;10;#a277ff\007'
  printf '\033]4;11;#ffca85\007'
  printf '\033]4;12;#a277ff\007'
  printf '\033]4;13;#a277ff\007'
  printf '\033]4;14;#61ffca\007'
  printf '\033]4;15;#edecee\007'
  printf '\033]10;#edecee\007'
  printf '\033]11;#15141b\007'
  printf '\033]12;#a277ff\007'
}
```

### Aurora

```bash
aurora() {
  printf '\033]4;0;#23262e\007'
  printf '\033]4;1;#f0266f\007'
  printf '\033]4;2;#8fd46d\007'
  printf '\033]4;3;#ffe66d\007'
  printf '\033]4;4;#102ee4\007'
  printf '\033]4;5;#ee5d43\007'
  printf '\033]4;6;#03d6b8\007'
  printf '\033]4;7;#c74ded\007'
  printf '\033]4;8;#4f545e\007'
  printf '\033]4;9;#f92672\007'
  printf '\033]4;10;#8fd46d\007'
  printf '\033]4;11;#ffe66d\007'
  printf '\033]4;12;#03d6b8\007'
  printf '\033]4;13;#ee5d43\007'
  printf '\033]4;14;#03d6b8\007'
  printf '\033]4;15;#c74ded\007'
  printf '\033]10;#ffca28\007'
  printf '\033]11;#23262e\007'
  printf '\033]12;#ee5d43\007'
}
```

### Ayu

```bash
ayu() {
  printf '\033]4;0;#11151c\007'
  printf '\033]4;1;#ea6c73\007'
  printf '\033]4;2;#7fd962\007'
  printf '\033]4;3;#f9af4f\007'
  printf '\033]4;4;#53bdfa\007'
  printf '\033]4;5;#cda1fa\007'
  printf '\033]4;6;#90e1c6\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#f07178\007'
  printf '\033]4;10;#aad94c\007'
  printf '\033]4;11;#ffb454\007'
  printf '\033]4;12;#59c2ff\007'
  printf '\033]4;13;#d2a6ff\007'
  printf '\033]4;14;#95e6cb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bfbdb6\007'
  printf '\033]11;#0b0e14\007'
  printf '\033]12;#e6b450\007'
}
```

### Ayu Light

```bash
ayu_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ea6c6d\007'
  printf '\033]4;2;#6cbf43\007'
  printf '\033]4;3;#eca944\007'
  printf '\033]4;4;#3199e1\007'
  printf '\033]4;5;#9e75c7\007'
  printf '\033]4;6;#46ba94\007'
  printf '\033]4;7;#bababa\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#f07171\007'
  printf '\033]4;10;#86b300\007'
  printf '\033]4;11;#f2ae49\007'
  printf '\033]4;12;#399ee6\007'
  printf '\033]4;13;#a37acc\007'
  printf '\033]4;14;#4cbf99\007'
  printf '\033]4;15;#d1d1d1\007'
  printf '\033]10;#5c6166\007'
  printf '\033]11;#f8f9fa\007'
  printf '\033]12;#ffaa33\007'
}
```

### Ayu Mirage

```bash
ayu_mirage() {
  printf '\033]4;0;#171b24\007'
  printf '\033]4;1;#ed8274\007'
  printf '\033]4;2;#87d96c\007'
  printf '\033]4;3;#facc6e\007'
  printf '\033]4;4;#6dcbfa\007'
  printf '\033]4;5;#dabafa\007'
  printf '\033]4;6;#90e1c6\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#f28779\007'
  printf '\033]4;10;#d5ff80\007'
  printf '\033]4;11;#ffd173\007'
  printf '\033]4;12;#73d0ff\007'
  printf '\033]4;13;#dfbfff\007'
  printf '\033]4;14;#95e6cb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cccac2\007'
  printf '\033]11;#1f2430\007'
  printf '\033]12;#ffcc66\007'
}
```

### Banana Blueberry

```bash
banana_blueberry() {
  printf '\033]4;0;#17141f\007'
  printf '\033]4;1;#ff6b7f\007'
  printf '\033]4;2;#00bd9c\007'
  printf '\033]4;3;#e6c62f\007'
  printf '\033]4;4;#22e8df\007'
  printf '\033]4;5;#dc396a\007'
  printf '\033]4;6;#56b6c2\007'
  printf '\033]4;7;#f1f1f1\007'
  printf '\033]4;8;#495162\007'
  printf '\033]4;9;#fe9ea1\007'
  printf '\033]4;10;#98c379\007'
  printf '\033]4;11;#f9e46b\007'
  printf '\033]4;12;#91fff4\007'
  printf '\033]4;13;#da70d6\007'
  printf '\033]4;14;#bcf3ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cccccc\007'
  printf '\033]11;#191323\007'
  printf '\033]12;#e07d13\007'
}
```

### Batman

```bash
batman() {
  printf '\033]4;0;#1b1d1e\007'
  printf '\033]4;1;#e6dc44\007'
  printf '\033]4;2;#c8be46\007'
  printf '\033]4;3;#f4fd22\007'
  printf '\033]4;4;#737174\007'
  printf '\033]4;5;#747271\007'
  printf '\033]4;6;#62605f\007'
  printf '\033]4;7;#c6c5bf\007'
  printf '\033]4;8;#505354\007'
  printf '\033]4;9;#fff78e\007'
  printf '\033]4;10;#fff27d\007'
  printf '\033]4;11;#feed6c\007'
  printf '\033]4;12;#919495\007'
  printf '\033]4;13;#9a9a9d\007'
  printf '\033]4;14;#a3a3a6\007'
  printf '\033]4;15;#dadbd6\007'
  printf '\033]10;#6f6f6f\007'
  printf '\033]11;#1b1d1e\007'
  printf '\033]12;#fcef0c\007'
}
```

### Belafonte Day

```bash
belafonte_day() {
  printf '\033]4;0;#20111b\007'
  printf '\033]4;1;#be100e\007'
  printf '\033]4;2;#858162\007'
  printf '\033]4;3;#d08b30\007'
  printf '\033]4;4;#426a79\007'
  printf '\033]4;5;#97522c\007'
  printf '\033]4;6;#989a9c\007'
  printf '\033]4;7;#968c83\007'
  printf '\033]4;8;#5e5252\007'
  printf '\033]4;9;#be100e\007'
  printf '\033]4;10;#858162\007'
  printf '\033]4;11;#d08b30\007'
  printf '\033]4;12;#426a79\007'
  printf '\033]4;13;#97522c\007'
  printf '\033]4;14;#989a9c\007'
  printf '\033]4;15;#d5ccba\007'
  printf '\033]10;#45373c\007'
  printf '\033]11;#d5ccba\007'
  printf '\033]12;#45373c\007'
}
```

### Belafonte Night

```bash
belafonte_night() {
  printf '\033]4;0;#20111b\007'
  printf '\033]4;1;#be100e\007'
  printf '\033]4;2;#858162\007'
  printf '\033]4;3;#eaa549\007'
  printf '\033]4;4;#426a79\007'
  printf '\033]4;5;#97522c\007'
  printf '\033]4;6;#989a9c\007'
  printf '\033]4;7;#968c83\007'
  printf '\033]4;8;#5e5252\007'
  printf '\033]4;9;#be100e\007'
  printf '\033]4;10;#858162\007'
  printf '\033]4;11;#eaa549\007'
  printf '\033]4;12;#426a79\007'
  printf '\033]4;13;#97522c\007'
  printf '\033]4;14;#989a9c\007'
  printf '\033]4;15;#d5ccba\007'
  printf '\033]10;#968c83\007'
  printf '\033]11;#20111b\007'
  printf '\033]12;#968c83\007'
}
```

### Birds Of Paradise

```bash
birds_of_paradise() {
  printf '\033]4;0;#573d26\007'
  printf '\033]4;1;#be2d26\007'
  printf '\033]4;2;#6ba18a\007'
  printf '\033]4;3;#e99d2a\007'
  printf '\033]4;4;#5a86ad\007'
  printf '\033]4;5;#ac80a6\007'
  printf '\033]4;6;#74a6ad\007'
  printf '\033]4;7;#e0dbb7\007'
  printf '\033]4;8;#9b6c4a\007'
  printf '\033]4;9;#e84627\007'
  printf '\033]4;10;#95d8ba\007'
  printf '\033]4;11;#d0d150\007'
  printf '\033]4;12;#b8d3ed\007'
  printf '\033]4;13;#d19ecb\007'
  printf '\033]4;14;#93cfd7\007'
  printf '\033]4;15;#fff9d5\007'
  printf '\033]10;#e0dbb7\007'
  printf '\033]11;#2a1f1d\007'
  printf '\033]12;#644a33\007'
}
```

### Black Metal

```bash
black_metal() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#486e6f\007'
  printf '\033]4;2;#dd9999\007'
  printf '\033]4;3;#a06666\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#486e6f\007'
  printf '\033]4;10;#dd9999\007'
  printf '\033]4;11;#a06666\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Bathory)

```bash
black_metal_bathory() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#fbcb97\007'
  printf '\033]4;3;#e78a53\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#fbcb97\007'
  printf '\033]4;11;#e78a53\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Burzum)

```bash
black_metal_burzum() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#ddeecc\007'
  printf '\033]4;3;#99bbaa\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#ddeecc\007'
  printf '\033]4;11;#99bbaa\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Dark Funeral)

```bash
black_metal_dark_funeral() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#d0dfee\007'
  printf '\033]4;3;#5f81a5\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#d0dfee\007'
  printf '\033]4;11;#5f81a5\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Gorgoroth)

```bash
black_metal_gorgoroth() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#9b8d7f\007'
  printf '\033]4;3;#8c7f70\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#9b8d7f\007'
  printf '\033]4;11;#8c7f70\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Immortal)

```bash
black_metal_immortal() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#7799bb\007'
  printf '\033]4;3;#556677\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#7799bb\007'
  printf '\033]4;11;#556677\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Khold)

```bash
black_metal_khold() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#eceee3\007'
  printf '\033]4;3;#974b46\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#eceee3\007'
  printf '\033]4;11;#974b46\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Marduk)

```bash
black_metal_marduk() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#a5aaa7\007'
  printf '\033]4;3;#626b67\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#a5aaa7\007'
  printf '\033]4;11;#626b67\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Mayhem)

```bash
black_metal_mayhem() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#f3ecd4\007'
  printf '\033]4;3;#eecc6c\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#f3ecd4\007'
  printf '\033]4;11;#eecc6c\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Nile)

```bash
black_metal_nile() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#aa9988\007'
  printf '\033]4;3;#777755\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#aa9988\007'
  printf '\033]4;11;#777755\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Black Metal (Venom)

```bash
black_metal_venom() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#5f8787\007'
  printf '\033]4;2;#f8f7f2\007'
  printf '\033]4;3;#79241f\007'
  printf '\033]4;4;#888888\007'
  printf '\033]4;5;#999999\007'
  printf '\033]4;6;#aaaaaa\007'
  printf '\033]4;7;#c1c1c1\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#5f8787\007'
  printf '\033]4;10;#f8f7f2\007'
  printf '\033]4;11;#79241f\007'
  printf '\033]4;12;#888888\007'
  printf '\033]4;13;#999999\007'
  printf '\033]4;14;#aaaaaa\007'
  printf '\033]4;15;#c1c1c1\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Blazer

```bash
blazer() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b87a7a\007'
  printf '\033]4;2;#7ab87a\007'
  printf '\033]4;3;#b8b87a\007'
  printf '\033]4;4;#7a7ab8\007'
  printf '\033]4;5;#b87ab8\007'
  printf '\033]4;6;#7ab8b8\007'
  printf '\033]4;7;#d9d9d9\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#dbbdbd\007'
  printf '\033]4;10;#bddbbd\007'
  printf '\033]4;11;#dbdbbd\007'
  printf '\033]4;12;#bdbddb\007'
  printf '\033]4;13;#dbbddb\007'
  printf '\033]4;14;#bddbdb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d9e6f2\007'
  printf '\033]11;#0d1926\007'
  printf '\033]12;#d9e6f2\007'
}
```

### Blue Berry Pie

```bash
blue_berry_pie() {
  printf '\033]4;0;#0a4c62\007'
  printf '\033]4;1;#99246e\007'
  printf '\033]4;2;#5cb1b3\007'
  printf '\033]4;3;#eab9a8\007'
  printf '\033]4;4;#90a5bd\007'
  printf '\033]4;5;#9d54a7\007'
  printf '\033]4;6;#7e83cc\007'
  printf '\033]4;7;#f0e8d6\007'
  printf '\033]4;8;#463c5d\007'
  printf '\033]4;9;#c87272\007'
  printf '\033]4;10;#0a6c7e\007'
  printf '\033]4;11;#7a3188\007'
  printf '\033]4;12;#5f3d63\007'
  printf '\033]4;13;#bc94b7\007'
  printf '\033]4;14;#5e6071\007'
  printf '\033]4;15;#0a6c7e\007'
  printf '\033]10;#babab9\007'
  printf '\033]11;#1c0c28\007'
  printf '\033]12;#fcfad6\007'
}
```

### Blue Dolphin

```bash
blue_dolphin() {
  printf '\033]4;0;#292d3e\007'
  printf '\033]4;1;#ff8288\007'
  printf '\033]4;2;#b4e88d\007'
  printf '\033]4;3;#f4d69f\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#e9c1ff\007'
  printf '\033]4;6;#89ebff\007'
  printf '\033]4;7;#d0d0d0\007'
  printf '\033]4;8;#9094a4\007'
  printf '\033]4;9;#ff8b92\007'
  printf '\033]4;10;#ddffa7\007'
  printf '\033]4;11;#ffe585\007'
  printf '\033]4;12;#9cc4ff\007'
  printf '\033]4;13;#ddb0f6\007'
  printf '\033]4;14;#a3f7ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c5f2ff\007'
  printf '\033]11;#006984\007'
  printf '\033]12;#ffcc00\007'
}
```

### Blue Matrix

```bash
blue_matrix() {
  printf '\033]4;0;#101116\007'
  printf '\033]4;1;#ff5680\007'
  printf '\033]4;2;#00ff9c\007'
  printf '\033]4;3;#fffc58\007'
  printf '\033]4;4;#00b0ff\007'
  printf '\033]4;5;#d57bff\007'
  printf '\033]4;6;#76c1ff\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#5ffa68\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#d682ec\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#00a2ff\007'
  printf '\033]11;#101116\007'
  printf '\033]12;#76ff9f\007'
}
```

### Bluloco Dark

```bash
bluloco_dark() {
  printf '\033]4;0;#41444d\007'
  printf '\033]4;1;#fc2f52\007'
  printf '\033]4;2;#25a45c\007'
  printf '\033]4;3;#ff936a\007'
  printf '\033]4;4;#3476ff\007'
  printf '\033]4;5;#7a82da\007'
  printf '\033]4;6;#4483aa\007'
  printf '\033]4;7;#cdd4e0\007'
  printf '\033]4;8;#8f9aae\007'
  printf '\033]4;9;#ff6480\007'
  printf '\033]4;10;#3fc56b\007'
  printf '\033]4;11;#f9c859\007'
  printf '\033]4;12;#10b1fe\007'
  printf '\033]4;13;#ff78f8\007'
  printf '\033]4;14;#5fb9bc\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b9c0cb\007'
  printf '\033]11;#282c34\007'
  printf '\033]12;#ffcc00\007'
}
```

### Bluloco Light

```bash
bluloco_light() {
  printf '\033]4;0;#373a41\007'
  printf '\033]4;1;#d52753\007'
  printf '\033]4;2;#23974a\007'
  printf '\033]4;3;#df631c\007'
  printf '\033]4;4;#275fe4\007'
  printf '\033]4;5;#823ff1\007'
  printf '\033]4;6;#27618d\007'
  printf '\033]4;7;#babbc2\007'
  printf '\033]4;8;#676a77\007'
  printf '\033]4;9;#ff6480\007'
  printf '\033]4;10;#3cbc66\007'
  printf '\033]4;11;#c5a332\007'
  printf '\033]4;12;#0099e1\007'
  printf '\033]4;13;#ce33c0\007'
  printf '\033]4;14;#6d93bb\007'
  printf '\033]4;15;#d3d3d3\007'
  printf '\033]10;#373a41\007'
  printf '\033]11;#f9f9f9\007'
  printf '\033]12;#f32759\007'
}
```

### Borland

```bash
borland() {
  printf '\033]4;0;#4f4f4f\007'
  printf '\033]4;1;#ff6c60\007'
  printf '\033]4;2;#a8ff60\007'
  printf '\033]4;3;#ffffb6\007'
  printf '\033]4;4;#96cbfe\007'
  printf '\033]4;5;#ff73fd\007'
  printf '\033]4;6;#c6c5fe\007'
  printf '\033]4;7;#eeeeee\007'
  printf '\033]4;8;#7c7c7c\007'
  printf '\033]4;9;#ffb6b0\007'
  printf '\033]4;10;#ceffac\007'
  printf '\033]4;11;#ffffcc\007'
  printf '\033]4;12;#b5dcff\007'
  printf '\033]4;13;#ff9cfe\007'
  printf '\033]4;14;#dfdffe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffff4e\007'
  printf '\033]11;#0000a4\007'
  printf '\033]12;#ffa560\007'
}
```

### Box

```bash
box() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0403\007'
  printf '\033]4;2;#19cb00\007'
  printf '\033]4;3;#cecb00\007'
  printf '\033]4;4;#0d73cc\007'
  printf '\033]4;5;#cb1ed1\007'
  printf '\033]4;6;#0dcdcd\007'
  printf '\033]4;7;#dddddd\007'
  printf '\033]4;8;#767676\007'
  printf '\033]4;9;#f2201f\007'
  printf '\033]4;10;#23fd00\007'
  printf '\033]4;11;#fffd00\007'
  printf '\033]4;12;#1a8fff\007'
  printf '\033]4;13;#fd28ff\007'
  printf '\033]4;14;#14ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#9fef00\007'
  printf '\033]11;#141d2b\007'
  printf '\033]12;#9fef00\007'
}
```

### branch

```bash
branch() {
  printf '\033]4;0;#35241c\007'
  printf '\033]4;1;#c2562d\007'
  printf '\033]4;2;#96a65e\007'
  printf '\033]4;3;#d29b5a\007'
  printf '\033]4;4;#3b8e8c\007'
  printf '\033]4;5;#c47e5b\007'
  printf '\033]4;6;#639a90\007'
  printf '\033]4;7;#cfc1a9\007'
  printf '\033]4;8;#564a45\007'
  printf '\033]4;9;#c2562d\007'
  printf '\033]4;10;#96a65e\007'
  printf '\033]4;11;#d29b5a\007'
  printf '\033]4;12;#3b8e8c\007'
  printf '\033]4;13;#c47e5b\007'
  printf '\033]4;14;#639a90\007'
  printf '\033]4;15;#cfc1a9\007'
  printf '\033]10;#cfc1a9\007'
  printf '\033]11;#32221a\007'
  printf '\033]12;#cfc1a9\007'
}
```

### Breadog

```bash
breadog() {
  printf '\033]4;0;#362c24\007'
  printf '\033]4;1;#b10b00\007'
  printf '\033]4;2;#007232\007'
  printf '\033]4;3;#8b4c00\007'
  printf '\033]4;4;#005cb4\007'
  printf '\033]4;5;#9b0097\007'
  printf '\033]4;6;#006a78\007'
  printf '\033]4;7;#baa99d\007'
  printf '\033]4;8;#514337\007'
  printf '\033]4;9;#de1100\007'
  printf '\033]4;10;#008f40\007'
  printf '\033]4;11;#ae6000\007'
  printf '\033]4;12;#0074e1\007'
  printf '\033]4;13;#c300bd\007'
  printf '\033]4;14;#008697\007'
  printf '\033]4;15;#eae1da\007'
  printf '\033]10;#362c24\007'
  printf '\033]11;#f1ebe6\007'
  printf '\033]12;#362c24\007'
}
```

### Breeze

```bash
breeze() {
  printf '\033]4;0;#31363b\007'
  printf '\033]4;1;#ed1515\007'
  printf '\033]4;2;#11d116\007'
  printf '\033]4;3;#f67400\007'
  printf '\033]4;4;#1d99f3\007'
  printf '\033]4;5;#9b59b6\007'
  printf '\033]4;6;#1abc9c\007'
  printf '\033]4;7;#eff0f1\007'
  printf '\033]4;8;#7f8c8d\007'
  printf '\033]4;9;#c0392b\007'
  printf '\033]4;10;#1cdc9a\007'
  printf '\033]4;11;#fdbc4b\007'
  printf '\033]4;12;#3daee9\007'
  printf '\033]4;13;#8e44ad\007'
  printf '\033]4;14;#16a085\007'
  printf '\033]4;15;#fcfcfc\007'
  printf '\033]10;#eff0f1\007'
  printf '\033]11;#31363b\007'
  printf '\033]12;#eff0f1\007'
}
```

### Bright Lights

```bash
bright_lights() {
  printf '\033]4;0;#191919\007'
  printf '\033]4;1;#ff355b\007'
  printf '\033]4;2;#b7e876\007'
  printf '\033]4;3;#ffc251\007'
  printf '\033]4;4;#76d4ff\007'
  printf '\033]4;5;#ba76e7\007'
  printf '\033]4;6;#6cbfb5\007'
  printf '\033]4;7;#c2c8d7\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#ff355b\007'
  printf '\033]4;10;#b7e876\007'
  printf '\033]4;11;#ffc251\007'
  printf '\033]4;12;#76d5ff\007'
  printf '\033]4;13;#ba76e7\007'
  printf '\033]4;14;#6cbfb5\007'
  printf '\033]4;15;#c2c8d7\007'
  printf '\033]10;#b3c9d7\007'
  printf '\033]11;#191919\007'
  printf '\033]12;#f34b00\007'
}
```

### Broadcast

```bash
broadcast() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#da4939\007'
  printf '\033]4;2;#519f50\007'
  printf '\033]4;3;#ffd24a\007'
  printf '\033]4;4;#6d9cbe\007'
  printf '\033]4;5;#d0d0ff\007'
  printf '\033]4;6;#6e9cbe\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#585858\007'
  printf '\033]4;9;#ff7b6b\007'
  printf '\033]4;10;#83d182\007'
  printf '\033]4;11;#ffff7c\007'
  printf '\033]4;12;#9fcef0\007'
  printf '\033]4;13;#ffffff\007'
  printf '\033]4;14;#a0cef0\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e6e1dc\007'
  printf '\033]11;#2b2b2b\007'
  printf '\033]12;#ffffff\007'
}
```

### Brogrammer

```bash
brogrammer() {
  printf '\033]4;0;#1f1f1f\007'
  printf '\033]4;1;#f81118\007'
  printf '\033]4;2;#2dc55e\007'
  printf '\033]4;3;#ecba0f\007'
  printf '\033]4;4;#2a84d2\007'
  printf '\033]4;5;#4e5ab7\007'
  printf '\033]4;6;#1081d6\007'
  printf '\033]4;7;#d6dbe5\007'
  printf '\033]4;8;#d6dbe5\007'
  printf '\033]4;9;#de352e\007'
  printf '\033]4;10;#1dd361\007'
  printf '\033]4;11;#f3bd09\007'
  printf '\033]4;12;#1081d6\007'
  printf '\033]4;13;#5350b9\007'
  printf '\033]4;14;#0f7ddb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d6dbe5\007'
  printf '\033]11;#131313\007'
  printf '\033]12;#b9b9b9\007'
}
```

### Builtin Dark

```bash
builtin_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#bb0000\007'
  printf '\033]4;2;#00bb00\007'
  printf '\033]4;3;#bbbb00\007'
  printf '\033]4;4;#0d0dc8\007'
  printf '\033]4;5;#bb00bb\007'
  printf '\033]4;6;#00bbbb\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Builtin Light

```bash
builtin_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#bb0000\007'
  printf '\033]4;2;#00bb00\007'
  printf '\033]4;3;#bbbb00\007'
  printf '\033]4;4;#0000bb\007'
  printf '\033]4;5;#bb00bb\007'
  printf '\033]4;6;#00bbbb\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#2fd92f\007'
  printf '\033]4;11;#bfbf15\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#22cccc\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Builtin Pastel Dark

```bash
builtin_pastel_dark() {
  printf '\033]4;0;#4f4f4f\007'
  printf '\033]4;1;#ff6c60\007'
  printf '\033]4;2;#a8ff60\007'
  printf '\033]4;3;#ffffb6\007'
  printf '\033]4;4;#96cbfe\007'
  printf '\033]4;5;#ff73fd\007'
  printf '\033]4;6;#c6c5fe\007'
  printf '\033]4;7;#eeeeee\007'
  printf '\033]4;8;#7c7c7c\007'
  printf '\033]4;9;#ffb6b0\007'
  printf '\033]4;10;#ceffac\007'
  printf '\033]4;11;#ffffcc\007'
  printf '\033]4;12;#b5dcff\007'
  printf '\033]4;13;#ff9cfe\007'
  printf '\033]4;14;#dfdffe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffa560\007'
}
```

### Builtin Tango Dark

```bash
builtin_tango_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0000\007'
  printf '\033]4;2;#4e9a06\007'
  printf '\033]4;3;#c4a000\007'
  printf '\033]4;4;#3465a4\007'
  printf '\033]4;5;#75507b\007'
  printf '\033]4;6;#06989a\007'
  printf '\033]4;7;#d3d7cf\007'
  printf '\033]4;8;#555753\007'
  printf '\033]4;9;#ef2929\007'
  printf '\033]4;10;#8ae234\007'
  printf '\033]4;11;#fce94f\007'
  printf '\033]4;12;#729fcf\007'
  printf '\033]4;13;#ad7fa8\007'
  printf '\033]4;14;#34e2e2\007'
  printf '\033]4;15;#eeeeec\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffffff\007'
}
```

### Builtin Tango Light

```bash
builtin_tango_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0000\007'
  printf '\033]4;2;#4e9a06\007'
  printf '\033]4;3;#c4a000\007'
  printf '\033]4;4;#3465a4\007'
  printf '\033]4;5;#75507b\007'
  printf '\033]4;6;#06989a\007'
  printf '\033]4;7;#b9bdb5\007'
  printf '\033]4;8;#555753\007'
  printf '\033]4;9;#ef2929\007'
  printf '\033]4;10;#7dd527\007'
  printf '\033]4;11;#d6c329\007'
  printf '\033]4;12;#729fcf\007'
  printf '\033]4;13;#ad7fa8\007'
  printf '\033]4;14;#27d5d5\007'
  printf '\033]4;15;#eeeeec\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### C64

```bash
c64() {
  printf '\033]4;0;#090300\007'
  printf '\033]4;1;#a2524c\007'
  printf '\033]4;2;#55a049\007'
  printf '\033]4;3;#bfce72\007'
  printf '\033]4;4;#6657b3\007'
  printf '\033]4;5;#984ca3\007'
  printf '\033]4;6;#67b6bd\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#a2524c\007'
  printf '\033]4;10;#55a049\007'
  printf '\033]4;11;#bfce72\007'
  printf '\033]4;12;#6657b3\007'
  printf '\033]4;13;#984ca3\007'
  printf '\033]4;14;#67b6bd\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#7869c4\007'
  printf '\033]11;#40318d\007'
  printf '\033]12;#7869c4\007'
}
```

### Calamity

```bash
calamity() {
  printf '\033]4;0;#2f2833\007'
  printf '\033]4;1;#fc644d\007'
  printf '\033]4;2;#a5f69c\007'
  printf '\033]4;3;#e9d7a5\007'
  printf '\033]4;4;#3b79c7\007'
  printf '\033]4;5;#f92672\007'
  printf '\033]4;6;#74d3de\007'
  printf '\033]4;7;#d5ced9\007'
  printf '\033]4;8;#7e6c88\007'
  printf '\033]4;9;#fc644d\007'
  printf '\033]4;10;#a5f69c\007'
  printf '\033]4;11;#e9d7a5\007'
  printf '\033]4;12;#3b79c7\007'
  printf '\033]4;13;#f92672\007'
  printf '\033]4;14;#74d3de\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d5ced9\007'
  printf '\033]11;#2f2833\007'
  printf '\033]12;#d5ced9\007'
}
```

### Carbonfox

```bash
carbonfox() {
  printf '\033]4;0;#282828\007'
  printf '\033]4;1;#ee5396\007'
  printf '\033]4;2;#25be6a\007'
  printf '\033]4;3;#08bdba\007'
  printf '\033]4;4;#78a9ff\007'
  printf '\033]4;5;#be95ff\007'
  printf '\033]4;6;#33b1ff\007'
  printf '\033]4;7;#dfdfe0\007'
  printf '\033]4;8;#484848\007'
  printf '\033]4;9;#f16da6\007'
  printf '\033]4;10;#46c880\007'
  printf '\033]4;11;#2dc7c4\007'
  printf '\033]4;12;#8cb6ff\007'
  printf '\033]4;13;#c8a5ff\007'
  printf '\033]4;14;#52bdff\007'
  printf '\033]4;15;#e4e4e5\007'
  printf '\033]10;#f2f4f8\007'
  printf '\033]11;#161616\007'
  printf '\033]12;#f2f4f8\007'
}
```

### Catppuccin Frappe

```bash
catppuccin_frappe() {
  printf '\033]4;0;#51576d\007'
  printf '\033]4;1;#e78284\007'
  printf '\033]4;2;#a6d189\007'
  printf '\033]4;3;#e5c890\007'
  printf '\033]4;4;#8caaee\007'
  printf '\033]4;5;#f4b8e4\007'
  printf '\033]4;6;#81c8be\007'
  printf '\033]4;7;#a5adce\007'
  printf '\033]4;8;#626880\007'
  printf '\033]4;9;#e67172\007'
  printf '\033]4;10;#8ec772\007'
  printf '\033]4;11;#d9ba73\007'
  printf '\033]4;12;#7b9ef0\007'
  printf '\033]4;13;#f2a4db\007'
  printf '\033]4;14;#5abfb5\007'
  printf '\033]4;15;#b5bfe2\007'
  printf '\033]10;#c6d0f5\007'
  printf '\033]11;#303446\007'
  printf '\033]12;#f2d5cf\007'
}
```

### Catppuccin Latte

```bash
catppuccin_latte() {
  printf '\033]4;0;#5c5f77\007'
  printf '\033]4;1;#d20f39\007'
  printf '\033]4;2;#40a02b\007'
  printf '\033]4;3;#df8e1d\007'
  printf '\033]4;4;#1e66f5\007'
  printf '\033]4;5;#ea76cb\007'
  printf '\033]4;6;#179299\007'
  printf '\033]4;7;#acb0be\007'
  printf '\033]4;8;#6c6f85\007'
  printf '\033]4;9;#de293e\007'
  printf '\033]4;10;#49af3d\007'
  printf '\033]4;11;#eea02d\007'
  printf '\033]4;12;#456eff\007'
  printf '\033]4;13;#fe85d8\007'
  printf '\033]4;14;#2d9fa8\007'
  printf '\033]4;15;#bcc0cc\007'
  printf '\033]10;#4c4f69\007'
  printf '\033]11;#eff1f5\007'
  printf '\033]12;#dc8a78\007'
}
```

### Catppuccin Macchiato

```bash
catppuccin_macchiato() {
  printf '\033]4;0;#494d64\007'
  printf '\033]4;1;#ed8796\007'
  printf '\033]4;2;#a6da95\007'
  printf '\033]4;3;#eed49f\007'
  printf '\033]4;4;#8aadf4\007'
  printf '\033]4;5;#f5bde6\007'
  printf '\033]4;6;#8bd5ca\007'
  printf '\033]4;7;#a5adcb\007'
  printf '\033]4;8;#5b6078\007'
  printf '\033]4;9;#ec7486\007'
  printf '\033]4;10;#8ccf7f\007'
  printf '\033]4;11;#e1c682\007'
  printf '\033]4;12;#78a1f6\007'
  printf '\033]4;13;#f2a9dd\007'
  printf '\033]4;14;#63cbc0\007'
  printf '\033]4;15;#b8c0e0\007'
  printf '\033]10;#cad3f5\007'
  printf '\033]11;#24273a\007'
  printf '\033]12;#f4dbd6\007'
}
```

### Catppuccin Mocha

```bash
catppuccin_mocha() {
  printf '\033]4;0;#45475a\007'
  printf '\033]4;1;#f38ba8\007'
  printf '\033]4;2;#a6e3a1\007'
  printf '\033]4;3;#f9e2af\007'
  printf '\033]4;4;#89b4fa\007'
  printf '\033]4;5;#f5c2e7\007'
  printf '\033]4;6;#94e2d5\007'
  printf '\033]4;7;#a6adc8\007'
  printf '\033]4;8;#585b70\007'
  printf '\033]4;9;#f37799\007'
  printf '\033]4;10;#89d88b\007'
  printf '\033]4;11;#ebd391\007'
  printf '\033]4;12;#74a8fc\007'
  printf '\033]4;13;#f2aede\007'
  printf '\033]4;14;#6bd7ca\007'
  printf '\033]4;15;#bac2de\007'
  printf '\033]10;#cdd6f4\007'
  printf '\033]11;#1e1e2e\007'
  printf '\033]12;#f5e0dc\007'
}
```

### CGA

```bash
cga() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#aa0000\007'
  printf '\033]4;2;#00aa00\007'
  printf '\033]4;3;#aa5500\007'
  printf '\033]4;4;#0d0db7\007'
  printf '\033]4;5;#aa00aa\007'
  printf '\033]4;6;#00aaaa\007'
  printf '\033]4;7;#aaaaaa\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#aaaaaa\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#b8b8b8\007'
}
```

### Chalk

```bash
chalk() {
  printf '\033]4;0;#7d8b8f\007'
  printf '\033]4;1;#b23a52\007'
  printf '\033]4;2;#789b6a\007'
  printf '\033]4;3;#b9ac4a\007'
  printf '\033]4;4;#2a7fac\007'
  printf '\033]4;5;#bd4f5a\007'
  printf '\033]4;6;#44a799\007'
  printf '\033]4;7;#d2d8d9\007'
  printf '\033]4;8;#888888\007'
  printf '\033]4;9;#f24840\007'
  printf '\033]4;10;#80c470\007'
  printf '\033]4;11;#ffeb62\007'
  printf '\033]4;12;#4196ff\007'
  printf '\033]4;13;#fc5275\007'
  printf '\033]4;14;#53cdbd\007'
  printf '\033]4;15;#d2d8d9\007'
  printf '\033]10;#d2d8d9\007'
  printf '\033]11;#2b2d2e\007'
  printf '\033]12;#708284\007'
}
```

### Chalkboard

```bash
chalkboard() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c37372\007'
  printf '\033]4;2;#72c373\007'
  printf '\033]4;3;#c2c372\007'
  printf '\033]4;4;#7372c3\007'
  printf '\033]4;5;#c372c2\007'
  printf '\033]4;6;#72c2c3\007'
  printf '\033]4;7;#d9d9d9\007'
  printf '\033]4;8;#585858\007'
  printf '\033]4;9;#dbaaaa\007'
  printf '\033]4;10;#aadbaa\007'
  printf '\033]4;11;#dadbaa\007'
  printf '\033]4;12;#aaaadb\007'
  printf '\033]4;13;#dbaada\007'
  printf '\033]4;14;#aadadb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d9e6f2\007'
  printf '\033]11;#29262f\007'
  printf '\033]12;#d9e6f2\007'
}
```

### Challenger Deep

```bash
challenger_deep() {
  printf '\033]4;0;#141228\007'
  printf '\033]4;1;#ff5458\007'
  printf '\033]4;2;#62d196\007'
  printf '\033]4;3;#ffb378\007'
  printf '\033]4;4;#65b2ff\007'
  printf '\033]4;5;#906cff\007'
  printf '\033]4;6;#63f2f1\007'
  printf '\033]4;7;#a6b3cc\007'
  printf '\033]4;8;#565575\007'
  printf '\033]4;9;#ff8080\007'
  printf '\033]4;10;#95ffa4\007'
  printf '\033]4;11;#ffe9aa\007'
  printf '\033]4;12;#91ddff\007'
  printf '\033]4;13;#c991e1\007'
  printf '\033]4;14;#aaffe4\007'
  printf '\033]4;15;#cbe3e7\007'
  printf '\033]10;#cbe1e7\007'
  printf '\033]11;#1e1c31\007'
  printf '\033]12;#fbfcfc\007'
}
```

### Chester

```bash
chester() {
  printf '\033]4;0;#080200\007'
  printf '\033]4;1;#fa5e5b\007'
  printf '\033]4;2;#16c98d\007'
  printf '\033]4;3;#ffc83f\007'
  printf '\033]4;4;#288ad6\007'
  printf '\033]4;5;#d34590\007'
  printf '\033]4;6;#28ddde\007'
  printf '\033]4;7;#e7e7e7\007'
  printf '\033]4;8;#6f6b68\007'
  printf '\033]4;9;#fa5e5b\007'
  printf '\033]4;10;#16c98d\007'
  printf '\033]4;11;#feef6d\007'
  printf '\033]4;12;#278ad6\007'
  printf '\033]4;13;#d34590\007'
  printf '\033]4;14;#27dede\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#2c3643\007'
  printf '\033]12;#b4b1b1\007'
}
```

### Ciapre

```bash
ciapre() {
  printf '\033]4;0;#181818\007'
  printf '\033]4;1;#8e0d16\007'
  printf '\033]4;2;#48513b\007'
  printf '\033]4;3;#cc8b3f\007'
  printf '\033]4;4;#576d8c\007'
  printf '\033]4;5;#724d7c\007'
  printf '\033]4;6;#5c4f4b\007'
  printf '\033]4;7;#aea47f\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ac3835\007'
  printf '\033]4;10;#a6a75d\007'
  printf '\033]4;11;#dcdf7c\007'
  printf '\033]4;12;#3097c6\007'
  printf '\033]4;13;#d33061\007'
  printf '\033]4;14;#f3dbb2\007'
  printf '\033]4;15;#f4f4f4\007'
  printf '\033]10;#aea47a\007'
  printf '\033]11;#191c27\007'
  printf '\033]12;#92805b\007'
}
```

### Citruszest

```bash
citruszest() {
  printf '\033]4;0;#404040\007'
  printf '\033]4;1;#ff5454\007'
  printf '\033]4;2;#00cc7a\007'
  printf '\033]4;3;#ffd400\007'
  printf '\033]4;4;#00bfff\007'
  printf '\033]4;5;#ff90fe\007'
  printf '\033]4;6;#48d1cc\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#808080\007'
  printf '\033]4;9;#ff1a75\007'
  printf '\033]4;10;#1affa3\007'
  printf '\033]4;11;#ffff00\007'
  printf '\033]4;12;#33cfff\007'
  printf '\033]4;13;#ffb2fe\007'
  printf '\033]4;14;#00fff2\007'
  printf '\033]4;15;#f9f9f9\007'
  printf '\033]10;#bfbfbf\007'
  printf '\033]11;#121212\007'
  printf '\033]12;#666666\007'
}
```

### CLRS

```bash
clrs() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f8282a\007'
  printf '\033]4;2;#328a5d\007'
  printf '\033]4;3;#fa701d\007'
  printf '\033]4;4;#135cd0\007'
  printf '\033]4;5;#9f00bd\007'
  printf '\033]4;6;#33c3c1\007'
  printf '\033]4;7;#b3b3b3\007'
  printf '\033]4;8;#555753\007'
  printf '\033]4;9;#fb0416\007'
  printf '\033]4;10;#2cc631\007'
  printf '\033]4;11;#e3bd0e\007'
  printf '\033]4;12;#1670ff\007'
  printf '\033]4;13;#e900b0\007'
  printf '\033]4;14;#3ad5ce\007'
  printf '\033]4;15;#eeeeec\007'
  printf '\033]10;#262626\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#62c6ef\007'
}
```

### Cobalt Neon

```bash
cobalt_neon() {
  printf '\033]4;0;#142631\007'
  printf '\033]4;1;#ff2320\007'
  printf '\033]4;2;#3ba5ff\007'
  printf '\033]4;3;#e9e75c\007'
  printf '\033]4;4;#8ff586\007'
  printf '\033]4;5;#781aa0\007'
  printf '\033]4;6;#8ff586\007'
  printf '\033]4;7;#ba46b2\007'
  printf '\033]4;8;#fff688\007'
  printf '\033]4;9;#d4312e\007'
  printf '\033]4;10;#8ff586\007'
  printf '\033]4;11;#e9f06d\007'
  printf '\033]4;12;#3c7dd2\007'
  printf '\033]4;13;#8230a7\007'
  printf '\033]4;14;#6cbc67\007'
  printf '\033]4;15;#8ff586\007'
  printf '\033]10;#8ff586\007'
  printf '\033]11;#142838\007'
  printf '\033]12;#c4206f\007'
}
```

### Cobalt Next

```bash
cobalt_next() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff527b\007'
  printf '\033]4;2;#8cc98f\007'
  printf '\033]4;3;#ffc64c\007'
  printf '\033]4;4;#409dd4\007'
  printf '\033]4;5;#cba3c7\007'
  printf '\033]4;6;#37b5b4\007'
  printf '\033]4;7;#d7deea\007'
  printf '\033]4;8;#62747f\007'
  printf '\033]4;9;#e47e8b\007'
  printf '\033]4;10;#baddbb\007'
  printf '\033]4;11;#ffdc91\007'
  printf '\033]4;12;#7ac0eb\007'
  printf '\033]4;13;#f3ccef\007'
  printf '\033]4;14;#84e4e3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d7deea\007'
  printf '\033]11;#162c35\007'
  printf '\033]12;#ffc64c\007'
}
```

### Cobalt Next Dark

```bash
cobalt_next_dark() {
  printf '\033]4;0;#262f37\007'
  printf '\033]4;1;#f94967\007'
  printf '\033]4;2;#8cc98f\007'
  printf '\033]4;3;#ffc64c\007'
  printf '\033]4;4;#409dd4\007'
  printf '\033]4;5;#cba3c7\007'
  printf '\033]4;6;#37b5b4\007'
  printf '\033]4;7;#d7deea\007'
  printf '\033]4;8;#62747f\007'
  printf '\033]4;9;#e47e8b\007'
  printf '\033]4;10;#baddbb\007'
  printf '\033]4;11;#ffdc91\007'
  printf '\033]4;12;#7ac0eb\007'
  printf '\033]4;13;#f3ccef\007'
  printf '\033]4;14;#84e4e3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d7deea\007'
  printf '\033]11;#0b1c24\007'
  printf '\033]12;#ffc64c\007'
}
```

### Cobalt Next Minimal

```bash
cobalt_next_minimal() {
  printf '\033]4;0;#323d47\007'
  printf '\033]4;1;#ff657a\007'
  printf '\033]4;2;#8cc98f\007'
  printf '\033]4;3;#ffc64c\007'
  printf '\033]4;4;#409dd4\007'
  printf '\033]4;5;#cba3c7\007'
  printf '\033]4;6;#37b5b4\007'
  printf '\033]4;7;#d7deea\007'
  printf '\033]4;8;#62747f\007'
  printf '\033]4;9;#e47e8b\007'
  printf '\033]4;10;#baddbb\007'
  printf '\033]4;11;#ffdc91\007'
  printf '\033]4;12;#7ac0eb\007'
  printf '\033]4;13;#f3ccef\007'
  printf '\033]4;14;#84e4e3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d7deea\007'
  printf '\033]11;#0b1c24\007'
  printf '\033]12;#37b5b4\007'
}
```

### Cobalt2

```bash
cobalt2() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff0000\007'
  printf '\033]4;2;#38de21\007'
  printf '\033]4;3;#ffe50a\007'
  printf '\033]4;4;#1460d2\007'
  printf '\033]4;5;#ff005d\007'
  printf '\033]4;6;#00bbbb\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#f40e17\007'
  printf '\033]4;10;#3bd01d\007'
  printf '\033]4;11;#edc809\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#6ae3fa\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#132738\007'
  printf '\033]12;#f0cc09\007'
}
```

### Coffee Theme

```bash
coffee_theme() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c91b00\007'
  printf '\033]4;2;#00c200\007'
  printf '\033]4;3;#adaa00\007'
  printf '\033]4;4;#0225c7\007'
  printf '\033]4;5;#ca30c7\007'
  printf '\033]4;6;#00b8ba\007'
  printf '\033]4;7;#a1a1a1\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#1fba28\007'
  printf '\033]4;11;#b2af1b\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#f26af2\007'
  printf '\033]4;14;#20bdbf\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#f5deb3\007'
  printf '\033]12;#a1a1a1\007'
}
```

### Crayon Pony Fish

```bash
crayon_pony_fish() {
  printf '\033]4;0;#2b1b1d\007'
  printf '\033]4;1;#91002b\007'
  printf '\033]4;2;#579524\007'
  printf '\033]4;3;#ab311b\007'
  printf '\033]4;4;#8c87b0\007'
  printf '\033]4;5;#692f50\007'
  printf '\033]4;6;#e8a866\007'
  printf '\033]4;7;#68525a\007'
  printf '\033]4;8;#4a383b\007'
  printf '\033]4;9;#c5255d\007'
  printf '\033]4;10;#8dff57\007'
  printf '\033]4;11;#c8381d\007'
  printf '\033]4;12;#cfc9ff\007'
  printf '\033]4;13;#fc6cba\007'
  printf '\033]4;14;#ffceaf\007'
  printf '\033]4;15;#b0949d\007'
  printf '\033]10;#68525a\007'
  printf '\033]11;#150707\007'
  printf '\033]12;#68525a\007'
}
```

### Cursor Dark

```bash
cursor_dark() {
  printf '\033]4;0;#2a2a2a\007'
  printf '\033]4;1;#bf616a\007'
  printf '\033]4;2;#a3be8c\007'
  printf '\033]4;3;#ebcb8b\007'
  printf '\033]4;4;#81a1c1\007'
  printf '\033]4;5;#b48ead\007'
  printf '\033]4;6;#88c0d0\007'
  printf '\033]4;7;#d8dee9\007'
  printf '\033]4;8;#505050\007'
  printf '\033]4;9;#bf616a\007'
  printf '\033]4;10;#a3be8c\007'
  printf '\033]4;11;#ebcb8b\007'
  printf '\033]4;12;#81a1c1\007'
  printf '\033]4;13;#b48ead\007'
  printf '\033]4;14;#88c0d0\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#141414\007'
  printf '\033]12;#ffffff\007'
}
```

### Cutie Pro

```bash
cutie_pro() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f56e7f\007'
  printf '\033]4;2;#bec975\007'
  printf '\033]4;3;#f58669\007'
  printf '\033]4;4;#42d9c5\007'
  printf '\033]4;5;#d286b7\007'
  printf '\033]4;6;#37cb8a\007'
  printf '\033]4;7;#d5c3c3\007'
  printf '\033]4;8;#88847f\007'
  printf '\033]4;9;#e5a1a3\007'
  printf '\033]4;10;#e8d6a7\007'
  printf '\033]4;11;#f1bb79\007'
  printf '\033]4;12;#80c5de\007'
  printf '\033]4;13;#b294bb\007'
  printf '\033]4;14;#9dccbb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d5d0c9\007'
  printf '\033]11;#181818\007'
  printf '\033]12;#efc4cd\007'
}
```

### Cyberdyne

```bash
cyberdyne() {
  printf '\033]4;0;#080808\007'
  printf '\033]4;1;#ff8373\007'
  printf '\033]4;2;#00c172\007'
  printf '\033]4;3;#d2a700\007'
  printf '\033]4;4;#0071cf\007'
  printf '\033]4;5;#ff90fe\007'
  printf '\033]4;6;#6bffdd\007'
  printf '\033]4;7;#f1f1f1\007'
  printf '\033]4;8;#484848\007'
  printf '\033]4;9;#ffc4be\007'
  printf '\033]4;10;#d6fcba\007'
  printf '\033]4;11;#fffed5\007'
  printf '\033]4;12;#c2e3ff\007'
  printf '\033]4;13;#ffb2fe\007'
  printf '\033]4;14;#e6e7fe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#00ff92\007'
  printf '\033]11;#151144\007'
  printf '\033]12;#00ff9c\007'
}
```

### Cyberpunk

```bash
cyberpunk() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff7092\007'
  printf '\033]4;2;#00fbac\007'
  printf '\033]4;3;#fffa6a\007'
  printf '\033]4;4;#00bfff\007'
  printf '\033]4;5;#df95ff\007'
  printf '\033]4;6;#86cbfe\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#ff8aa4\007'
  printf '\033]4;10;#21f6bc\007'
  printf '\033]4;11;#fff787\007'
  printf '\033]4;12;#1bccfd\007'
  printf '\033]4;13;#e6aefe\007'
  printf '\033]4;14;#99d6fc\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e5e5e5\007'
  printf '\033]11;#332a57\007'
  printf '\033]12;#21f6bc\007'
}
```

### Cyberpunk Scarlet Protocol

```bash
cyberpunk_scarlet_protocol() {
  printf '\033]4;0;#101116\007'
  printf '\033]4;1;#ff0051\007'
  printf '\033]4;2;#01dc84\007'
  printf '\033]4;3;#faf945\007'
  printf '\033]4;4;#0271b6\007'
  printf '\033]4;5;#c930c7\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#60fa68\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#bd35ec\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e41951\007'
  printf '\033]11;#101116\007'
  printf '\033]12;#76ff9f\007'
}
```

### Dark Modern

```bash
dark_modern() {
  printf '\033]4;0;#272727\007'
  printf '\033]4;1;#f74949\007'
  printf '\033]4;2;#2ea043\007'
  printf '\033]4;3;#9e6a03\007'
  printf '\033]4;4;#0078d4\007'
  printf '\033]4;5;#d01273\007'
  printf '\033]4;6;#1db4d6\007'
  printf '\033]4;7;#cccccc\007'
  printf '\033]4;8;#5d5d5d\007'
  printf '\033]4;9;#dc5452\007'
  printf '\033]4;10;#23d18b\007'
  printf '\033]4;11;#f5f543\007'
  printf '\033]4;12;#3b8eea\007'
  printf '\033]4;13;#d670d6\007'
  printf '\033]4;14;#29b8db\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#cccccc\007'
  printf '\033]11;#1f1f1f\007'
  printf '\033]12;#ffffff\007'
}
```

### Dark Pastel

```bash
dark_pastel() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff5555\007'
  printf '\033]4;2;#55ff55\007'
  printf '\033]4;3;#ffff55\007'
  printf '\033]4;4;#5555ff\007'
  printf '\033]4;5;#ff55ff\007'
  printf '\033]4;6;#55ffff\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Dark+

```bash
dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cd3131\007'
  printf '\033]4;2;#0dbc79\007'
  printf '\033]4;3;#e5e510\007'
  printf '\033]4;4;#2472c8\007'
  printf '\033]4;5;#bc3fbc\007'
  printf '\033]4;6;#11a8cd\007'
  printf '\033]4;7;#e5e5e5\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#f14c4c\007'
  printf '\033]4;10;#23d18b\007'
  printf '\033]4;11;#f5f543\007'
  printf '\033]4;12;#3b8eea\007'
  printf '\033]4;13;#d670d6\007'
  printf '\033]4;14;#29b8db\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#cccccc\007'
  printf '\033]11;#1e1e1e\007'
  printf '\033]12;#ffffff\007'
}
```

### Darkermatrix

```bash
darkermatrix() {
  printf '\033]4;0;#091013\007'
  printf '\033]4;1;#1a4831\007'
  printf '\033]4;2;#6fa64c\007'
  printf '\033]4;3;#595900\007'
  printf '\033]4;4;#00cb6b\007'
  printf '\033]4;5;#4e375a\007'
  printf '\033]4;6;#125459\007'
  printf '\033]4;7;#1a4833\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#0d452a\007'
  printf '\033]4;10;#90d762\007'
  printf '\033]4;11;#e2e500\007'
  printf '\033]4;12;#00ff87\007'
  printf '\033]4;13;#4e375a\007'
  printf '\033]4;14;#176c73\007'
  printf '\033]4;15;#00381e\007'
  printf '\033]10;#35451a\007'
  printf '\033]11;#070c0e\007'
  printf '\033]12;#444733\007'
}
```

### Darkmatrix

```bash
darkmatrix() {
  printf '\033]4;0;#091013\007'
  printf '\033]4;1;#006536\007'
  printf '\033]4;2;#6fa64c\007'
  printf '\033]4;3;#7e8000\007'
  printf '\033]4;4;#2c9a84\007'
  printf '\033]4;5;#523a60\007'
  printf '\033]4;6;#114d53\007'
  printf '\033]4;7;#006536\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#00733d\007'
  printf '\033]4;10;#90d762\007'
  printf '\033]4;11;#e2e500\007'
  printf '\033]4;12;#46d8b8\007'
  printf '\033]4;13;#573d66\007'
  printf '\033]4;14;#12545a\007'
  printf '\033]4;15;#006536\007'
  printf '\033]10;#3e5715\007'
  printf '\033]11;#070c0e\007'
  printf '\033]12;#9fa86e\007'
}
```

### Darkside

```bash
darkside() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e8341c\007'
  printf '\033]4;2;#68c256\007'
  printf '\033]4;3;#f2d42c\007'
  printf '\033]4;4;#1c98e8\007'
  printf '\033]4;5;#8e69c9\007'
  printf '\033]4;6;#1c98e8\007'
  printf '\033]4;7;#bababa\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#e05a4f\007'
  printf '\033]4;10;#77b869\007'
  printf '\033]4;11;#efd64b\007'
  printf '\033]4;12;#387cd3\007'
  printf '\033]4;13;#957bbe\007'
  printf '\033]4;14;#3d97e2\007'
  printf '\033]4;15;#bababa\007'
  printf '\033]10;#bababa\007'
  printf '\033]11;#222324\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Dawnfox

```bash
dawnfox() {
  printf '\033]4;0;#575279\007'
  printf '\033]4;1;#b4637a\007'
  printf '\033]4;2;#618774\007'
  printf '\033]4;3;#ea9d34\007'
  printf '\033]4;4;#286983\007'
  printf '\033]4;5;#907aa9\007'
  printf '\033]4;6;#56949f\007'
  printf '\033]4;7;#b2b6bd\007'
  printf '\033]4;8;#5f5695\007'
  printf '\033]4;9;#c26d85\007'
  printf '\033]4;10;#629f81\007'
  printf '\033]4;11;#eea846\007'
  printf '\033]4;12;#2d81a3\007'
  printf '\033]4;13;#9a80b9\007'
  printf '\033]4;14;#5ca7b4\007'
  printf '\033]4;15;#e6ebf3\007'
  printf '\033]10;#575279\007'
  printf '\033]11;#faf4ed\007'
  printf '\033]12;#575279\007'
}
```

### Dayfox

```bash
dayfox() {
  printf '\033]4;0;#352c24\007'
  printf '\033]4;1;#a5222f\007'
  printf '\033]4;2;#396847\007'
  printf '\033]4;3;#ac5402\007'
  printf '\033]4;4;#2848a9\007'
  printf '\033]4;5;#6e33ce\007'
  printf '\033]4;6;#287980\007'
  printf '\033]4;7;#bfb6ae\007'
  printf '\033]4;8;#534c45\007'
  printf '\033]4;9;#b3434e\007'
  printf '\033]4;10;#577f63\007'
  printf '\033]4;11;#b86e28\007'
  printf '\033]4;12;#4863b6\007'
  printf '\033]4;13;#8452d5\007'
  printf '\033]4;14;#488d93\007'
  printf '\033]4;15;#f4ece6\007'
  printf '\033]10;#3d2b5a\007'
  printf '\033]11;#f6f2ee\007'
  printf '\033]12;#3d2b5a\007'
}
```

### Deep

```bash
deep() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d70005\007'
  printf '\033]4;2;#1cd915\007'
  printf '\033]4;3;#d9bd26\007'
  printf '\033]4;4;#5665ff\007'
  printf '\033]4;5;#b052da\007'
  printf '\033]4;6;#50d2da\007'
  printf '\033]4;7;#e0e0e0\007'
  printf '\033]4;8;#535353\007'
  printf '\033]4;9;#fb0007\007'
  printf '\033]4;10;#22ff18\007'
  printf '\033]4;11;#fedc2b\007'
  printf '\033]4;12;#9fa9ff\007'
  printf '\033]4;13;#e09aff\007'
  printf '\033]4;14;#8df9ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cdcdcd\007'
  printf '\033]11;#090909\007'
  printf '\033]12;#d0d0d0\007'
}
```

### Desert

```bash
desert() {
  printf '\033]4;0;#4d4d4d\007'
  printf '\033]4;1;#ff2b2b\007'
  printf '\033]4;2;#98fb98\007'
  printf '\033]4;3;#f0e68c\007'
  printf '\033]4;4;#cd853f\007'
  printf '\033]4;5;#ffdead\007'
  printf '\033]4;6;#ffa0a0\007'
  printf '\033]4;7;#f5deb3\007'
  printf '\033]4;8;#626262\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#87ceff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#ffd700\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#333333\007'
  printf '\033]12;#00ff00\007'
}
```

### Detuned

```bash
detuned() {
  printf '\033]4;0;#171717\007'
  printf '\033]4;1;#fe4386\007'
  printf '\033]4;2;#a6e32d\007'
  printf '\033]4;3;#e6da73\007'
  printf '\033]4;4;#0094d9\007'
  printf '\033]4;5;#9b37ff\007'
  printf '\033]4;6;#50b7d9\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#fa80ac\007'
  printf '\033]4;10;#bde371\007'
  printf '\033]4;11;#fff27f\007'
  printf '\033]4;12;#00beff\007'
  printf '\033]4;13;#be9eff\007'
  printf '\033]4;14;#5ed7ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c7c7c7\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Dimidium

```bash
dimidium() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cf494c\007'
  printf '\033]4;2;#60b442\007'
  printf '\033]4;3;#db9c11\007'
  printf '\033]4;4;#0575d8\007'
  printf '\033]4;5;#af5ed2\007'
  printf '\033]4;6;#1db6bb\007'
  printf '\033]4;7;#bab7b6\007'
  printf '\033]4;8;#817e7e\007'
  printf '\033]4;9;#ff643b\007'
  printf '\033]4;10;#37e57b\007'
  printf '\033]4;11;#fccd1a\007'
  printf '\033]4;12;#688dfd\007'
  printf '\033]4;13;#ed6fe9\007'
  printf '\033]4;14;#32e0fb\007'
  printf '\033]4;15;#dee3e4\007'
  printf '\033]10;#bab7b6\007'
  printf '\033]11;#141414\007'
  printf '\033]12;#37e57b\007'
}
```

### Dimmed Monokai

```bash
dimmed_monokai() {
  printf '\033]4;0;#3a3d43\007'
  printf '\033]4;1;#be3f48\007'
  printf '\033]4;2;#879a3b\007'
  printf '\033]4;3;#c5a635\007'
  printf '\033]4;4;#4f76a1\007'
  printf '\033]4;5;#855c8d\007'
  printf '\033]4;6;#578fa4\007'
  printf '\033]4;7;#b9bcba\007'
  printf '\033]4;8;#888987\007'
  printf '\033]4;9;#fb001f\007'
  printf '\033]4;10;#0f722f\007'
  printf '\033]4;11;#c47033\007'
  printf '\033]4;12;#186de3\007'
  printf '\033]4;13;#fb0067\007'
  printf '\033]4;14;#2e706d\007'
  printf '\033]4;15;#fdffb9\007'
  printf '\033]10;#b9bcba\007'
  printf '\033]11;#1f1f1f\007'
  printf '\033]12;#f83e19\007'
}
```

### Django

```bash
django() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fd6209\007'
  printf '\033]4;2;#41a83e\007'
  printf '\033]4;3;#ffe862\007'
  printf '\033]4;4;#315d3f\007'
  printf '\033]4;5;#f8f8f8\007'
  printf '\033]4;6;#9df39f\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#585858\007'
  printf '\033]4;9;#ff943b\007'
  printf '\033]4;10;#73da70\007'
  printf '\033]4;11;#ffff94\007'
  printf '\033]4;12;#568264\007'
  printf '\033]4;13;#ffffff\007'
  printf '\033]4;14;#cfffd1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f8f8f8\007'
  printf '\033]11;#0b2f20\007'
  printf '\033]12;#336442\007'
}
```

### Django Reborn Again

```bash
django_reborn_again() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fd6209\007'
  printf '\033]4;2;#41a83e\007'
  printf '\033]4;3;#ffe862\007'
  printf '\033]4;4;#245032\007'
  printf '\033]4;5;#f8f8f8\007'
  printf '\033]4;6;#9df39f\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#ff943b\007'
  printf '\033]4;10;#73da70\007'
  printf '\033]4;11;#ffff94\007'
  printf '\033]4;12;#568264\007'
  printf '\033]4;13;#ffffff\007'
  printf '\033]4;14;#cfffd1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dadedc\007'
  printf '\033]11;#051f14\007'
  printf '\033]12;#ffcc00\007'
}
```

### Django Smooth

```bash
django_smooth() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fd6209\007'
  printf '\033]4;2;#41a83e\007'
  printf '\033]4;3;#ffe862\007'
  printf '\033]4;4;#989898\007'
  printf '\033]4;5;#f8f8f8\007'
  printf '\033]4;6;#9df39f\007'
  printf '\033]4;7;#e8e8e7\007'
  printf '\033]4;8;#727272\007'
  printf '\033]4;9;#ff943b\007'
  printf '\033]4;10;#73da70\007'
  printf '\033]4;11;#ffff94\007'
  printf '\033]4;12;#cacaca\007'
  printf '\033]4;13;#ffffff\007'
  printf '\033]4;14;#cfffd1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f8f8f8\007'
  printf '\033]11;#245032\007'
  printf '\033]12;#4c7e5c\007'
}
```

### Doom One

```bash
doom_one() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff6c6b\007'
  printf '\033]4;2;#98be65\007'
  printf '\033]4;3;#ecbe7b\007'
  printf '\033]4;4;#a9a1e1\007'
  printf '\033]4;5;#c678dd\007'
  printf '\033]4;6;#51afef\007'
  printf '\033]4;7;#bbc2cf\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#ff6655\007'
  printf '\033]4;10;#99bb66\007'
  printf '\033]4;11;#ecbe7b\007'
  printf '\033]4;12;#a9a1e1\007'
  printf '\033]4;13;#c678dd\007'
  printf '\033]4;14;#51afef\007'
  printf '\033]4;15;#bfbfbf\007'
  printf '\033]10;#bbc2cf\007'
  printf '\033]11;#282c34\007'
  printf '\033]12;#51afef\007'
}
```

### Doom Peacock

```bash
doom_peacock() {
  printf '\033]4;0;#1c1f24\007'
  printf '\033]4;1;#cb4b16\007'
  printf '\033]4;2;#26a6a6\007'
  printf '\033]4;3;#bcd42a\007'
  printf '\033]4;4;#2a6cc6\007'
  printf '\033]4;5;#a9a1e1\007'
  printf '\033]4;6;#5699af\007'
  printf '\033]4;7;#ede0ce\007'
  printf '\033]4;8;#51504d\007'
  printf '\033]4;9;#ff5d38\007'
  printf '\033]4;10;#98be65\007'
  printf '\033]4;11;#e6f972\007'
  printf '\033]4;12;#51afef\007'
  printf '\033]4;13;#c678dd\007'
  printf '\033]4;14;#46d9ff\007'
  printf '\033]4;15;#dfdfdf\007'
  printf '\033]10;#ede0ce\007'
  printf '\033]11;#2b2a27\007'
  printf '\033]12;#9c9c9d\007'
}
```

### Dot Gov

```bash
dot_gov() {
  printf '\033]4;0;#191919\007'
  printf '\033]4;1;#bf091d\007'
  printf '\033]4;2;#3d9751\007'
  printf '\033]4;3;#f6bb34\007'
  printf '\033]4;4;#17b2e0\007'
  printf '\033]4;5;#7830b0\007'
  printf '\033]4;6;#8bd2ed\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#bf091d\007'
  printf '\033]4;10;#3d9751\007'
  printf '\033]4;11;#f6bb34\007'
  printf '\033]4;12;#17b2e0\007'
  printf '\033]4;13;#7830b0\007'
  printf '\033]4;14;#8bd2ed\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ebebeb\007'
  printf '\033]11;#262c35\007'
  printf '\033]12;#d9002f\007'
}
```

### Dracula

```bash
dracula() {
  printf '\033]4;0;#21222c\007'
  printf '\033]4;1;#ff5555\007'
  printf '\033]4;2;#50fa7b\007'
  printf '\033]4;3;#f1fa8c\007'
  printf '\033]4;4;#bd93f9\007'
  printf '\033]4;5;#ff79c6\007'
  printf '\033]4;6;#8be9fd\007'
  printf '\033]4;7;#f8f8f2\007'
  printf '\033]4;8;#6272a4\007'
  printf '\033]4;9;#ff6e6e\007'
  printf '\033]4;10;#69ff94\007'
  printf '\033]4;11;#ffffa5\007'
  printf '\033]4;12;#d6acff\007'
  printf '\033]4;13;#ff92df\007'
  printf '\033]4;14;#a4ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f8f8f2\007'
  printf '\033]11;#282a36\007'
  printf '\033]12;#f8f8f2\007'
}
```

### Dracula+

```bash
dracula() {
  printf '\033]4;0;#21222c\007'
  printf '\033]4;1;#ff5555\007'
  printf '\033]4;2;#50fa7b\007'
  printf '\033]4;3;#ffcb6b\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#8be9fd\007'
  printf '\033]4;7;#f8f8f2\007'
  printf '\033]4;8;#545454\007'
  printf '\033]4;9;#ff6e6e\007'
  printf '\033]4;10;#69ff94\007'
  printf '\033]4;11;#ffcb6b\007'
  printf '\033]4;12;#d6acff\007'
  printf '\033]4;13;#ff92df\007'
  printf '\033]4;14;#a4ffff\007'
  printf '\033]4;15;#f8f8f2\007'
  printf '\033]10;#f8f8f2\007'
  printf '\033]11;#212121\007'
  printf '\033]12;#eceff4\007'
}
```

### Duckbones

```bash
duckbones() {
  printf '\033]4;0;#0e101a\007'
  printf '\033]4;1;#e03600\007'
  printf '\033]4;2;#5dcd97\007'
  printf '\033]4;3;#e39500\007'
  printf '\033]4;4;#00a3cb\007'
  printf '\033]4;5;#795ccc\007'
  printf '\033]4;6;#00a3cb\007'
  printf '\033]4;7;#ebefc0\007'
  printf '\033]4;8;#444860\007'
  printf '\033]4;9;#ff4821\007'
  printf '\033]4;10;#58db9e\007'
  printf '\033]4;11;#f6a100\007'
  printf '\033]4;12;#00b4e0\007'
  printf '\033]4;13;#b3a1e6\007'
  printf '\033]4;14;#00b4e0\007'
  printf '\033]4;15;#b3b692\007'
  printf '\033]10;#ebefc0\007'
  printf '\033]11;#0e101a\007'
  printf '\033]12;#edf2c2\007'
}
```

### Duotone Dark

```bash
duotone_dark() {
  printf '\033]4;0;#1f1d27\007'
  printf '\033]4;1;#d9393e\007'
  printf '\033]4;2;#2dcd73\007'
  printf '\033]4;3;#d9b76e\007'
  printf '\033]4;4;#ffc284\007'
  printf '\033]4;5;#de8d40\007'
  printf '\033]4;6;#2488ff\007'
  printf '\033]4;7;#b7a1ff\007'
  printf '\033]4;8;#4e4a60\007'
  printf '\033]4;9;#d9393e\007'
  printf '\033]4;10;#2dcd73\007'
  printf '\033]4;11;#d9b76e\007'
  printf '\033]4;12;#ffc284\007'
  printf '\033]4;13;#de8d40\007'
  printf '\033]4;14;#2488ff\007'
  printf '\033]4;15;#eae5ff\007'
  printf '\033]10;#b7a1ff\007'
  printf '\033]11;#1f1d27\007'
  printf '\033]12;#ff9839\007'
}
```

### Duskfox

```bash
duskfox() {
  printf '\033]4;0;#393552\007'
  printf '\033]4;1;#eb6f92\007'
  printf '\033]4;2;#a3be8c\007'
  printf '\033]4;3;#f6c177\007'
  printf '\033]4;4;#569fba\007'
  printf '\033]4;5;#c4a7e7\007'
  printf '\033]4;6;#9ccfd8\007'
  printf '\033]4;7;#e0def4\007'
  printf '\033]4;8;#544d8a\007'
  printf '\033]4;9;#f083a2\007'
  printf '\033]4;10;#b1d196\007'
  printf '\033]4;11;#f9cb8c\007'
  printf '\033]4;12;#65b1cd\007'
  printf '\033]4;13;#ccb1ed\007'
  printf '\033]4;14;#a6dae3\007'
  printf '\033]4;15;#e2e0f7\007'
  printf '\033]10;#e0def4\007'
  printf '\033]11;#232136\007'
  printf '\033]12;#e0def4\007'
}
```

### Earthsong

```bash
earthsong() {
  printf '\033]4;0;#121418\007'
  printf '\033]4;1;#c94234\007'
  printf '\033]4;2;#85c54c\007'
  printf '\033]4;3;#f5ae2e\007'
  printf '\033]4;4;#1398b9\007'
  printf '\033]4;5;#d0633d\007'
  printf '\033]4;6;#509552\007'
  printf '\033]4;7;#e5c6aa\007'
  printf '\033]4;8;#675f54\007'
  printf '\033]4;9;#ff645a\007'
  printf '\033]4;10;#98e036\007'
  printf '\033]4;11;#e0d561\007'
  printf '\033]4;12;#5fdaff\007'
  printf '\033]4;13;#ff9269\007'
  printf '\033]4;14;#84f088\007'
  printf '\033]4;15;#f6f7ec\007'
  printf '\033]10;#e5c7a9\007'
  printf '\033]11;#292520\007'
  printf '\033]12;#f6f7ec\007'
}
```

### Electron Highlighter

```bash
electron_highlighter() {
  printf '\033]4;0;#15161f\007'
  printf '\033]4;1;#ff6c8d\007'
  printf '\033]4;2;#00ffc3\007'
  printf '\033]4;3;#ffd7a9\007'
  printf '\033]4;4;#77abff\007'
  printf '\033]4;5;#daa4f4\007'
  printf '\033]4;6;#00fdff\007'
  printf '\033]4;7;#778faf\007'
  printf '\033]4;8;#4a6789\007'
  printf '\033]4;9;#ff6c8d\007'
  printf '\033]4;10;#00ffc3\007'
  printf '\033]4;11;#ffd7a9\007'
  printf '\033]4;12;#77abff\007'
  printf '\033]4;13;#daa4f4\007'
  printf '\033]4;14;#00fdff\007'
  printf '\033]4;15;#c3cee2\007'
  printf '\033]10;#a5b6d4\007'
  printf '\033]11;#23283d\007'
  printf '\033]12;#a5b6d4\007'
}
```

### Elegant

```bash
elegant() {
  printf '\033]4;0;#0a1222\007'
  printf '\033]4;1;#ff0257\007'
  printf '\033]4;2;#85cc95\007'
  printf '\033]4;3;#ffcb8b\007'
  printf '\033]4;4;#8dabe1\007'
  printf '\033]4;5;#c792eb\007'
  printf '\033]4;6;#78ccf0\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#575656\007'
  printf '\033]4;9;#ff0057\007'
  printf '\033]4;10;#85cc95\007'
  printf '\033]4;11;#ffcb8b\007'
  printf '\033]4;12;#8dabe1\007'
  printf '\033]4;13;#c792eb\007'
  printf '\033]4;14;#3facef\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ced2d6\007'
  printf '\033]11;#292b31\007'
  printf '\033]12;#00beff\007'
}
```

### Elemental

```bash
elemental() {
  printf '\033]4;0;#3c3c30\007'
  printf '\033]4;1;#98290f\007'
  printf '\033]4;2;#479a43\007'
  printf '\033]4;3;#7f7111\007'
  printf '\033]4;4;#497f7d\007'
  printf '\033]4;5;#7f4e2f\007'
  printf '\033]4;6;#387f58\007'
  printf '\033]4;7;#807974\007'
  printf '\033]4;8;#555445\007'
  printf '\033]4;9;#e0502a\007'
  printf '\033]4;10;#61e070\007'
  printf '\033]4;11;#d69927\007'
  printf '\033]4;12;#79d9d9\007'
  printf '\033]4;13;#cd7c54\007'
  printf '\033]4;14;#59d599\007'
  printf '\033]4;15;#fff1e9\007'
  printf '\033]10;#807a74\007'
  printf '\033]11;#22211d\007'
  printf '\033]12;#facb80\007'
}
```

### Elementary

```bash
elementary() {
  printf '\033]4;0;#242424\007'
  printf '\033]4;1;#d71c15\007'
  printf '\033]4;2;#5aa513\007'
  printf '\033]4;3;#fdb40c\007'
  printf '\033]4;4;#134899\007'
  printf '\033]4;5;#e40038\007'
  printf '\033]4;6;#2595e1\007'
  printf '\033]4;7;#efefef\007'
  printf '\033]4;8;#4b4b4b\007'
  printf '\033]4;9;#fc1c18\007'
  printf '\033]4;10;#6bc219\007'
  printf '\033]4;11;#fec80e\007'
  printf '\033]4;12;#0955ff\007'
  printf '\033]4;13;#fb0050\007'
  printf '\033]4;14;#3ea8fc\007'
  printf '\033]4;15;#8c00ec\007'
  printf '\033]10;#efefef\007'
  printf '\033]11;#181818\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Embark

```bash
embark() {
  printf '\033]4;0;#1e1c31\007'
  printf '\033]4;1;#f0719b\007'
  printf '\033]4;2;#a1efd3\007'
  printf '\033]4;3;#ffe9aa\007'
  printf '\033]4;4;#57c7ff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#87dfeb\007'
  printf '\033]4;7;#f8f8f2\007'
  printf '\033]4;8;#585273\007'
  printf '\033]4;9;#f02e6e\007'
  printf '\033]4;10;#2ce592\007'
  printf '\033]4;11;#ffb378\007'
  printf '\033]4;12;#1da0e2\007'
  printf '\033]4;13;#a742ea\007'
  printf '\033]4;14;#63f2f1\007'
  printf '\033]4;15;#a6b3cc\007'
  printf '\033]10;#eeffff\007'
  printf '\033]11;#1e1c31\007'
  printf '\033]12;#a1efd3\007'
}
```

### Embers Dark

```bash
embers_dark() {
  printf '\033]4;0;#16130f\007'
  printf '\033]4;1;#826d57\007'
  printf '\033]4;2;#57826d\007'
  printf '\033]4;3;#6d8257\007'
  printf '\033]4;4;#6d5782\007'
  printf '\033]4;5;#82576d\007'
  printf '\033]4;6;#576d82\007'
  printf '\033]4;7;#a39a90\007'
  printf '\033]4;8;#5a5047\007'
  printf '\033]4;9;#828257\007'
  printf '\033]4;10;#464039\007'
  printf '\033]4;11;#50483f\007'
  printf '\033]4;12;#8a8075\007'
  printf '\033]4;13;#beb6ae\007'
  printf '\033]4;14;#825757\007'
  printf '\033]4;15;#dbd6d1\007'
  printf '\033]10;#a39a90\007'
  printf '\033]11;#16130f\007'
  printf '\033]12;#a39a90\007'
}
```

### ENCOM

```bash
encom() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#9f0000\007'
  printf '\033]4;2;#008b00\007'
  printf '\033]4;3;#ffd000\007'
  printf '\033]4;4;#0081ff\007'
  printf '\033]4;5;#bc00ca\007'
  printf '\033]4;6;#008b8b\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff0000\007'
  printf '\033]4;10;#00ee00\007'
  printf '\033]4;11;#ffff00\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#ff00ff\007'
  printf '\033]4;14;#00cdcd\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#00a595\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Espresso

```bash
espresso() {
  printf '\033]4;0;#353535\007'
  printf '\033]4;1;#d25252\007'
  printf '\033]4;2;#a5c261\007'
  printf '\033]4;3;#ffc66d\007'
  printf '\033]4;4;#6c99bb\007'
  printf '\033]4;5;#d197d9\007'
  printf '\033]4;6;#bed6ff\007'
  printf '\033]4;7;#eeeeec\007'
  printf '\033]4;8;#606060\007'
  printf '\033]4;9;#f00c0c\007'
  printf '\033]4;10;#c2e075\007'
  printf '\033]4;11;#e1e48b\007'
  printf '\033]4;12;#8ab7d9\007'
  printf '\033]4;13;#efb5f7\007'
  printf '\033]4;14;#dcf4ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#323232\007'
  printf '\033]12;#d6d6d6\007'
}
```

### Espresso Libre

```bash
espresso_libre() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0000\007'
  printf '\033]4;2;#1a921c\007'
  printf '\033]4;3;#f0e53a\007'
  printf '\033]4;4;#0066ff\007'
  printf '\033]4;5;#c5656b\007'
  printf '\033]4;6;#06989a\007'
  printf '\033]4;7;#d3d7cf\007'
  printf '\033]4;8;#555753\007'
  printf '\033]4;9;#ef2929\007'
  printf '\033]4;10;#9aff87\007'
  printf '\033]4;11;#fffb5c\007'
  printf '\033]4;12;#43a8ed\007'
  printf '\033]4;13;#ff818a\007'
  printf '\033]4;14;#34e2e2\007'
  printf '\033]4;15;#eeeeec\007'
  printf '\033]10;#b8a898\007'
  printf '\033]11;#2a211c\007'
  printf '\033]12;#ffffff\007'
}
```

### Everblush

```bash
everblush() {
  printf '\033]4;0;#232a2d\007'
  printf '\033]4;1;#e57474\007'
  printf '\033]4;2;#8ccf7e\007'
  printf '\033]4;3;#e5c76b\007'
  printf '\033]4;4;#67b0e8\007'
  printf '\033]4;5;#c47fd5\007'
  printf '\033]4;6;#6cbfbf\007'
  printf '\033]4;7;#b3b9b8\007'
  printf '\033]4;8;#464e50\007'
  printf '\033]4;9;#ef7e7e\007'
  printf '\033]4;10;#96d988\007'
  printf '\033]4;11;#f4d67a\007'
  printf '\033]4;12;#71baf2\007'
  printf '\033]4;13;#ce89df\007'
  printf '\033]4;14;#67cbe7\007'
  printf '\033]4;15;#bdc3c2\007'
  printf '\033]10;#dadada\007'
  printf '\033]11;#141b1e\007'
  printf '\033]12;#dadada\007'
}
```

### Everforest Dark Hard

```bash
everforest_dark_hard() {
  printf '\033]4;0;#7a8478\007'
  printf '\033]4;1;#e67e80\007'
  printf '\033]4;2;#a7c080\007'
  printf '\033]4;3;#dbbc7f\007'
  printf '\033]4;4;#7fbbb3\007'
  printf '\033]4;5;#d699b6\007'
  printf '\033]4;6;#83c092\007'
  printf '\033]4;7;#f2efdf\007'
  printf '\033]4;8;#a6b0a0\007'
  printf '\033]4;9;#f85552\007'
  printf '\033]4;10;#8da101\007'
  printf '\033]4;11;#dfa000\007'
  printf '\033]4;12;#3a94c5\007'
  printf '\033]4;13;#df69ba\007'
  printf '\033]4;14;#35a77c\007'
  printf '\033]4;15;#fffbef\007'
  printf '\033]10;#d3c6aa\007'
  printf '\033]11;#1e2326\007'
  printf '\033]12;#e69875\007'
}
```

### Everforest Light Med

```bash
everforest_light_med() {
  printf '\033]4;0;#7a8478\007'
  printf '\033]4;1;#e67e80\007'
  printf '\033]4;2;#9ab373\007'
  printf '\033]4;3;#c1a266\007'
  printf '\033]4;4;#7fbbb3\007'
  printf '\033]4;5;#d699b6\007'
  printf '\033]4;6;#83c092\007'
  printf '\033]4;7;#b2af9f\007'
  printf '\033]4;8;#a6b0a0\007'
  printf '\033]4;9;#f85552\007'
  printf '\033]4;10;#8da101\007'
  printf '\033]4;11;#dfa000\007'
  printf '\033]4;12;#3a94c5\007'
  printf '\033]4;13;#df69ba\007'
  printf '\033]4;14;#35a77c\007'
  printf '\033]4;15;#fffbef\007'
  printf '\033]10;#5c6a72\007'
  printf '\033]11;#efebd4\007'
  printf '\033]12;#f57d26\007'
}
```

### Fahrenheit

```bash
fahrenheit() {
  printf '\033]4;0;#1d1d1d\007'
  printf '\033]4;1;#cda074\007'
  printf '\033]4;2;#9e744d\007'
  printf '\033]4;3;#fecf75\007'
  printf '\033]4;4;#7f0e0f\007'
  printf '\033]4;5;#734c4d\007'
  printf '\033]4;6;#979797\007'
  printf '\033]4;7;#ffffce\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#fecea0\007'
  printf '\033]4;10;#cc734d\007'
  printf '\033]4;11;#fd9f4d\007'
  printf '\033]4;12;#cb4a05\007'
  printf '\033]4;13;#4e739f\007'
  printf '\033]4;14;#fed04d\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffce\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Fairyfloss

```bash
fairyfloss() {
  printf '\033]4;0;#040303\007'
  printf '\033]4;1;#f92672\007'
  printf '\033]4;2;#c2ffdf\007'
  printf '\033]4;3;#e6c000\007'
  printf '\033]4;4;#c2ffdf\007'
  printf '\033]4;5;#ffb8d1\007'
  printf '\033]4;6;#c5a3ff\007'
  printf '\033]4;7;#f8f8f0\007'
  printf '\033]4;8;#6090cb\007'
  printf '\033]4;9;#ff857f\007'
  printf '\033]4;10;#c2ffdf\007'
  printf '\033]4;11;#ffea00\007'
  printf '\033]4;12;#c2ffdf\007'
  printf '\033]4;13;#ffb8d1\007'
  printf '\033]4;14;#c5a3ff\007'
  printf '\033]4;15;#f8f8f0\007'
  printf '\033]10;#f8f8f2\007'
  printf '\033]11;#5a5475\007'
  printf '\033]12;#f8f8f0\007'
}
```

### Farmhouse Dark

```bash
farmhouse_dark() {
  printf '\033]4;0;#1d2027\007'
  printf '\033]4;1;#ba0004\007'
  printf '\033]4;2;#549d00\007'
  printf '\033]4;3;#c87300\007'
  printf '\033]4;4;#0049e6\007'
  printf '\033]4;5;#9f1b61\007'
  printf '\033]4;6;#1fb65c\007'
  printf '\033]4;7;#e8e4e1\007'
  printf '\033]4;8;#464d54\007'
  printf '\033]4;9;#eb0009\007'
  printf '\033]4;10;#7ac100\007'
  printf '\033]4;11;#ea9a00\007'
  printf '\033]4;12;#006efe\007'
  printf '\033]4;13;#bf3b7f\007'
  printf '\033]4;14;#19e062\007'
  printf '\033]4;15;#f4eef0\007'
  printf '\033]10;#e8e4e1\007'
  printf '\033]11;#1d2027\007'
  printf '\033]12;#006efe\007'
}
```

### Farmhouse Light

```bash
farmhouse_light() {
  printf '\033]4;0;#1d2027\007'
  printf '\033]4;1;#8d0003\007'
  printf '\033]4;2;#3a7d00\007'
  printf '\033]4;3;#a95600\007'
  printf '\033]4;4;#092ccd\007'
  printf '\033]4;5;#820046\007'
  printf '\033]4;6;#229256\007'
  printf '\033]4;7;#a8a4a1\007'
  printf '\033]4;8;#394047\007'
  printf '\033]4;9;#eb0009\007'
  printf '\033]4;10;#7ac100\007'
  printf '\033]4;11;#ea9a00\007'
  printf '\033]4;12;#006efe\007'
  printf '\033]4;13;#bf3b7f\007'
  printf '\033]4;14;#00c649\007'
  printf '\033]4;15;#f4eef0\007'
  printf '\033]10;#1d2027\007'
  printf '\033]11;#e8e4e1\007'
  printf '\033]12;#006efe\007'
}
```

### Fideloper

```bash
fideloper() {
  printf '\033]4;0;#292f33\007'
  printf '\033]4;1;#cb1e2d\007'
  printf '\033]4;2;#edb8ac\007'
  printf '\033]4;3;#b7ab9b\007'
  printf '\033]4;4;#2e78c2\007'
  printf '\033]4;5;#c0236f\007'
  printf '\033]4;6;#309186\007'
  printf '\033]4;7;#eae3ce\007'
  printf '\033]4;8;#496068\007'
  printf '\033]4;9;#d4605a\007'
  printf '\033]4;10;#d4605a\007'
  printf '\033]4;11;#a86671\007'
  printf '\033]4;12;#7c85c4\007'
  printf '\033]4;13;#5c5db2\007'
  printf '\033]4;14;#819090\007'
  printf '\033]4;15;#fcf4df\007'
  printf '\033]10;#dbdae0\007'
  printf '\033]11;#292f33\007'
  printf '\033]12;#d4605a\007'
}
```

### Firefly Traditional

```bash
firefly_traditional() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c23720\007'
  printf '\033]4;2;#33bc26\007'
  printf '\033]4;3;#afad24\007'
  printf '\033]4;4;#5a63ff\007'
  printf '\033]4;5;#d53ad2\007'
  printf '\033]4;6;#33bbc7\007'
  printf '\033]4;7;#cccccc\007'
  printf '\033]4;8;#828282\007'
  printf '\033]4;9;#ff3b1e\007'
  printf '\033]4;10;#2ee720\007'
  printf '\033]4;11;#ecec16\007'
  printf '\033]4;12;#838dff\007'
  printf '\033]4;13;#ff5cfe\007'
  printf '\033]4;14;#29f0f0\007'
  printf '\033]4;15;#ebebeb\007'
  printf '\033]10;#f5f5f5\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#00f900\007'
}
```

### Firefox Dev

```bash
firefox_dev() {
  printf '\033]4;0;#002831\007'
  printf '\033]4;1;#e63853\007'
  printf '\033]4;2;#5eb83c\007'
  printf '\033]4;3;#a57706\007'
  printf '\033]4;4;#359ddf\007'
  printf '\033]4;5;#d75cff\007'
  printf '\033]4;6;#4b73a2\007'
  printf '\033]4;7;#dcdcdc\007'
  printf '\033]4;8;#26444d\007'
  printf '\033]4;9;#e1003f\007'
  printf '\033]4;10;#1d9000\007'
  printf '\033]4;11;#cd9409\007'
  printf '\033]4;12;#006fc0\007'
  printf '\033]4;13;#a200da\007'
  printf '\033]4;14;#005794\007'
  printf '\033]4;15;#e2e2e2\007'
  printf '\033]10;#7c8fa4\007'
  printf '\033]11;#0e1011\007'
  printf '\033]12;#708284\007'
}
```

### Firewatch

```bash
firewatch() {
  printf '\033]4;0;#585f6d\007'
  printf '\033]4;1;#d95360\007'
  printf '\033]4;2;#5ab977\007'
  printf '\033]4;3;#dfb563\007'
  printf '\033]4;4;#4d89c4\007'
  printf '\033]4;5;#d55119\007'
  printf '\033]4;6;#44a8b6\007'
  printf '\033]4;7;#e6e5ff\007'
  printf '\033]4;8;#585f6d\007'
  printf '\033]4;9;#d95360\007'
  printf '\033]4;10;#5ab977\007'
  printf '\033]4;11;#dfb563\007'
  printf '\033]4;12;#4c89c5\007'
  printf '\033]4;13;#d55119\007'
  printf '\033]4;14;#44a8b6\007'
  printf '\033]4;15;#e6e5ff\007'
  printf '\033]10;#9ba2b2\007'
  printf '\033]11;#1e2027\007'
  printf '\033]12;#f6f7ec\007'
}
```

### Fish Tank

```bash
fish_tank() {
  printf '\033]4;0;#03073c\007'
  printf '\033]4;1;#c6004a\007'
  printf '\033]4;2;#acf157\007'
  printf '\033]4;3;#fecd5e\007'
  printf '\033]4;4;#525fb8\007'
  printf '\033]4;5;#986f82\007'
  printf '\033]4;6;#968763\007'
  printf '\033]4;7;#ecf0fc\007'
  printf '\033]4;8;#6c5b30\007'
  printf '\033]4;9;#da4b8a\007'
  printf '\033]4;10;#dbffa9\007'
  printf '\033]4;11;#fee6a9\007'
  printf '\033]4;12;#b2befa\007'
  printf '\033]4;13;#fda5cd\007'
  printf '\033]4;14;#a5bd86\007'
  printf '\033]4;15;#f6ffec\007'
  printf '\033]10;#ecf0fe\007'
  printf '\033]11;#232537\007'
  printf '\033]12;#fecd5e\007'
}
```

### Flat

```bash
flat() {
  printf '\033]4;0;#222d3f\007'
  printf '\033]4;1;#a82320\007'
  printf '\033]4;2;#32a548\007'
  printf '\033]4;3;#e58d11\007'
  printf '\033]4;4;#3167ac\007'
  printf '\033]4;5;#781aa0\007'
  printf '\033]4;6;#2c9370\007'
  printf '\033]4;7;#b0b6ba\007'
  printf '\033]4;8;#475262\007'
  printf '\033]4;9;#d4312e\007'
  printf '\033]4;10;#2d9440\007'
  printf '\033]4;11;#e5be0c\007'
  printf '\033]4;12;#3c7dd2\007'
  printf '\033]4;13;#8230a7\007'
  printf '\033]4;14;#35b387\007'
  printf '\033]4;15;#e7eced\007'
  printf '\033]10;#2cc55d\007'
  printf '\033]11;#002240\007'
  printf '\033]12;#e5be0c\007'
}
```

### Flatland

```bash
flatland() {
  printf '\033]4;0;#1d1d19\007'
  printf '\033]4;1;#f18339\007'
  printf '\033]4;2;#9fd364\007'
  printf '\033]4;3;#f4ef6d\007'
  printf '\033]4;4;#5096be\007'
  printf '\033]4;5;#695abc\007'
  printf '\033]4;6;#d63865\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#50504c\007'
  printf '\033]4;9;#d22a24\007'
  printf '\033]4;10;#a7d42c\007'
  printf '\033]4;11;#ff8949\007'
  printf '\033]4;12;#61b9d0\007'
  printf '\033]4;13;#695abc\007'
  printf '\033]4;14;#d63865\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b8dbef\007'
  printf '\033]11;#1d1f21\007'
  printf '\033]12;#708284\007'
}
```

### Flexoki Dark

```bash
flexoki_dark() {
  printf '\033]4;0;#100f0f\007'
  printf '\033]4;1;#d14d41\007'
  printf '\033]4;2;#879a39\007'
  printf '\033]4;3;#d0a215\007'
  printf '\033]4;4;#4385be\007'
  printf '\033]4;5;#ce5d97\007'
  printf '\033]4;6;#3aa99f\007'
  printf '\033]4;7;#878580\007'
  printf '\033]4;8;#575653\007'
  printf '\033]4;9;#af3029\007'
  printf '\033]4;10;#66800b\007'
  printf '\033]4;11;#ad8301\007'
  printf '\033]4;12;#205ea6\007'
  printf '\033]4;13;#a02f6f\007'
  printf '\033]4;14;#24837b\007'
  printf '\033]4;15;#cecdc3\007'
  printf '\033]10;#cecdc3\007'
  printf '\033]11;#100f0f\007'
  printf '\033]12;#cecdc3\007'
}
```

### Flexoki Light

```bash
flexoki_light() {
  printf '\033]4;0;#100f0f\007'
  printf '\033]4;1;#af3029\007'
  printf '\033]4;2;#66800b\007'
  printf '\033]4;3;#ad8301\007'
  printf '\033]4;4;#205ea6\007'
  printf '\033]4;5;#a02f6f\007'
  printf '\033]4;6;#24837b\007'
  printf '\033]4;7;#6f6e69\007'
  printf '\033]4;8;#b7b5ac\007'
  printf '\033]4;9;#d14d41\007'
  printf '\033]4;10;#879a39\007'
  printf '\033]4;11;#d0a215\007'
  printf '\033]4;12;#4385be\007'
  printf '\033]4;13;#ce5d97\007'
  printf '\033]4;14;#3aa99f\007'
  printf '\033]4;15;#cecdc3\007'
  printf '\033]10;#100f0f\007'
  printf '\033]11;#fffcf0\007'
  printf '\033]12;#100f0f\007'
}
```

### Floraverse

```bash
floraverse() {
  printf '\033]4;0;#08002e\007'
  printf '\033]4;1;#7e1a46\007'
  printf '\033]4;2;#5d731a\007'
  printf '\033]4;3;#cd751c\007'
  printf '\033]4;4;#1d6da1\007'
  printf '\033]4;5;#b7077e\007'
  printf '\033]4;6;#42a38c\007'
  printf '\033]4;7;#f3e0b8\007'
  printf '\033]4;8;#4c3866\007'
  printf '\033]4;9;#d02063\007'
  printf '\033]4;10;#b4ce59\007'
  printf '\033]4;11;#fac357\007'
  printf '\033]4;12;#40a4cf\007'
  printf '\033]4;13;#f12aae\007'
  printf '\033]4;14;#62caa8\007'
  printf '\033]4;15;#fff5db\007'
  printf '\033]10;#dbd1b9\007'
  printf '\033]11;#0e0d15\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Forest Blue

```bash
forest_blue() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#f8818e\007'
  printf '\033]4;2;#92d3a2\007'
  printf '\033]4;3;#1a8e63\007'
  printf '\033]4;4;#8ed0ce\007'
  printf '\033]4;5;#5e468c\007'
  printf '\033]4;6;#31658c\007'
  printf '\033]4;7;#e2d8cd\007'
  printf '\033]4;8;#4a4a4a\007'
  printf '\033]4;9;#fb3d66\007'
  printf '\033]4;10;#6bb48d\007'
  printf '\033]4;11;#30c85a\007'
  printf '\033]4;12;#39a7a2\007'
  printf '\033]4;13;#7e62b3\007'
  printf '\033]4;14;#6096bf\007'
  printf '\033]4;15;#e2d8cd\007'
  printf '\033]10;#e2d8cd\007'
  printf '\033]11;#051519\007'
  printf '\033]12;#9e9ecb\007'
}
```

### Framer

```bash
framer() {
  printf '\033]4;0;#141414\007'
  printf '\033]4;1;#ff5555\007'
  printf '\033]4;2;#98ec65\007'
  printf '\033]4;3;#ffcc33\007'
  printf '\033]4;4;#00aaff\007'
  printf '\033]4;5;#aa88ff\007'
  printf '\033]4;6;#88ddff\007'
  printf '\033]4;7;#cccccc\007'
  printf '\033]4;8;#414141\007'
  printf '\033]4;9;#ff8888\007'
  printf '\033]4;10;#b6f292\007'
  printf '\033]4;11;#ffd966\007'
  printf '\033]4;12;#33bbff\007'
  printf '\033]4;13;#cebbff\007'
  printf '\033]4;14;#bbecff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#777777\007'
  printf '\033]11;#111111\007'
  printf '\033]12;#fcdc08\007'
}
```

### Front End Delight

```bash
front_end_delight() {
  printf '\033]4;0;#242526\007'
  printf '\033]4;1;#f8511b\007'
  printf '\033]4;2;#565747\007'
  printf '\033]4;3;#fa771d\007'
  printf '\033]4;4;#2c70b7\007'
  printf '\033]4;5;#f02e4f\007'
  printf '\033]4;6;#3ca1a6\007'
  printf '\033]4;7;#adadad\007'
  printf '\033]4;8;#5fac6d\007'
  printf '\033]4;9;#f74319\007'
  printf '\033]4;10;#74ec4c\007'
  printf '\033]4;11;#fdc325\007'
  printf '\033]4;12;#3393ca\007'
  printf '\033]4;13;#e75e4f\007'
  printf '\033]4;14;#4fbce6\007'
  printf '\033]4;15;#8c735b\007'
  printf '\033]10;#adadad\007'
  printf '\033]11;#1b1c1d\007'
  printf '\033]12;#cdcdcd\007'
}
```

### Fun Forrest

```bash
fun_forrest() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d6262b\007'
  printf '\033]4;2;#919c00\007'
  printf '\033]4;3;#be8a13\007'
  printf '\033]4;4;#4699a3\007'
  printf '\033]4;5;#8d4331\007'
  printf '\033]4;6;#da8213\007'
  printf '\033]4;7;#ddc265\007'
  printf '\033]4;8;#7f6a55\007'
  printf '\033]4;9;#e55a1c\007'
  printf '\033]4;10;#bfc65a\007'
  printf '\033]4;11;#ffcb1b\007'
  printf '\033]4;12;#7cc9cf\007'
  printf '\033]4;13;#d26349\007'
  printf '\033]4;14;#e6a96b\007'
  printf '\033]4;15;#ffeaa3\007'
  printf '\033]10;#dec165\007'
  printf '\033]11;#251200\007'
  printf '\033]12;#e5591c\007'
}
```

### Galaxy

```bash
galaxy() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f9555f\007'
  printf '\033]4;2;#21b089\007'
  printf '\033]4;3;#fef02a\007'
  printf '\033]4;4;#589df6\007'
  printf '\033]4;5;#944d95\007'
  printf '\033]4;6;#1f9ee7\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#fa8c8f\007'
  printf '\033]4;10;#35bb9a\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#589df6\007'
  printf '\033]4;13;#e75699\007'
  printf '\033]4;14;#3979bc\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1d2837\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Galizur

```bash
galizur() {
  printf '\033]4;0;#223344\007'
  printf '\033]4;1;#aa1122\007'
  printf '\033]4;2;#33aa11\007'
  printf '\033]4;3;#ccaa22\007'
  printf '\033]4;4;#2255cc\007'
  printf '\033]4;5;#7755aa\007'
  printf '\033]4;6;#22bbdd\007'
  printf '\033]4;7;#8899aa\007'
  printf '\033]4;8;#556677\007'
  printf '\033]4;9;#ff1133\007'
  printf '\033]4;10;#33ff11\007'
  printf '\033]4;11;#ffdd33\007'
  printf '\033]4;12;#3377ff\007'
  printf '\033]4;13;#aa77ff\007'
  printf '\033]4;14;#33ddff\007'
  printf '\033]4;15;#bbccdd\007'
  printf '\033]10;#ddeeff\007'
  printf '\033]11;#071317\007'
  printf '\033]12;#ddeeff\007'
}
```

### Ghostty Default Style Dark

```bash
ghostty_default_style_dark() {
  printf '\033]4;0;#1d1f21\007'
  printf '\033]4;1;#cc6566\007'
  printf '\033]4;2;#b6bd68\007'
  printf '\033]4;3;#f0c674\007'
  printf '\033]4;4;#82a2be\007'
  printf '\033]4;5;#b294bb\007'
  printf '\033]4;6;#8abeb7\007'
  printf '\033]4;7;#c4c8c6\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#d54e53\007'
  printf '\033]4;10;#b9ca4b\007'
  printf '\033]4;11;#e7c547\007'
  printf '\033]4;12;#7aa6da\007'
  printf '\033]4;13;#c397d8\007'
  printf '\033]4;14;#70c0b1\007'
  printf '\033]4;15;#eaeaea\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#282c34\007'
  printf '\033]12;#ffffff\007'
}
```

### GitHub

```bash
github() {
  printf '\033]4;0;#3e3e3e\007'
  printf '\033]4;1;#970b16\007'
  printf '\033]4;2;#07962a\007'
  printf '\033]4;3;#c5bb94\007'
  printf '\033]4;4;#003e8a\007'
  printf '\033]4;5;#e94691\007'
  printf '\033]4;6;#7cc4df\007'
  printf '\033]4;7;#b2b2b2\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#de0000\007'
  printf '\033]4;10;#7ac895\007'
  printf '\033]4;11;#d7b600\007'
  printf '\033]4;12;#2e6cba\007'
  printf '\033]4;13;#f29592\007'
  printf '\033]4;14;#00c7cb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#3e3e3e\007'
  printf '\033]11;#f4f4f4\007'
  printf '\033]12;#3f3f3f\007'
}
```

### GitHub Dark

```bash
github_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f78166\007'
  printf '\033]4;2;#56d364\007'
  printf '\033]4;3;#e3b341\007'
  printf '\033]4;4;#6ca4f8\007'
  printf '\033]4;5;#db61a2\007'
  printf '\033]4;6;#2b7489\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4d4d4d\007'
  printf '\033]4;9;#f78166\007'
  printf '\033]4;10;#56d364\007'
  printf '\033]4;11;#e3b341\007'
  printf '\033]4;12;#6ca4f8\007'
  printf '\033]4;13;#db61a2\007'
  printf '\033]4;14;#2b7489\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#8b949e\007'
  printf '\033]11;#101216\007'
  printf '\033]12;#c9d1d9\007'
}
```

### GitHub Dark Colorblind

```bash
github_dark_colorblind() {
  printf '\033]4;0;#484f58\007'
  printf '\033]4;1;#ec8e2c\007'
  printf '\033]4;2;#58a6ff\007'
  printf '\033]4;3;#d29922\007'
  printf '\033]4;4;#58a6ff\007'
  printf '\033]4;5;#bc8cff\007'
  printf '\033]4;6;#39c5cf\007'
  printf '\033]4;7;#b1bac4\007'
  printf '\033]4;8;#6e7681\007'
  printf '\033]4;9;#fdac54\007'
  printf '\033]4;10;#79c0ff\007'
  printf '\033]4;11;#e3b341\007'
  printf '\033]4;12;#79c0ff\007'
  printf '\033]4;13;#d2a8ff\007'
  printf '\033]4;14;#56d4dd\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c9d1d9\007'
  printf '\033]11;#0d1117\007'
  printf '\033]12;#58a6ff\007'
}
```

### GitHub Dark Default

```bash
github_dark_default() {
  printf '\033]4;0;#484f58\007'
  printf '\033]4;1;#ff7b72\007'
  printf '\033]4;2;#3fb950\007'
  printf '\033]4;3;#d29922\007'
  printf '\033]4;4;#58a6ff\007'
  printf '\033]4;5;#bc8cff\007'
  printf '\033]4;6;#39c5cf\007'
  printf '\033]4;7;#b1bac4\007'
  printf '\033]4;8;#6e7681\007'
  printf '\033]4;9;#ffa198\007'
  printf '\033]4;10;#56d364\007'
  printf '\033]4;11;#e3b341\007'
  printf '\033]4;12;#79c0ff\007'
  printf '\033]4;13;#d2a8ff\007'
  printf '\033]4;14;#56d4dd\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e6edf3\007'
  printf '\033]11;#0d1117\007'
  printf '\033]12;#2f81f7\007'
}
```

### GitHub Dark Dimmed

```bash
github_dark_dimmed() {
  printf '\033]4;0;#545d68\007'
  printf '\033]4;1;#f47067\007'
  printf '\033]4;2;#57ab5a\007'
  printf '\033]4;3;#c69026\007'
  printf '\033]4;4;#539bf5\007'
  printf '\033]4;5;#b083f0\007'
  printf '\033]4;6;#39c5cf\007'
  printf '\033]4;7;#909dab\007'
  printf '\033]4;8;#636e7b\007'
  printf '\033]4;9;#ff938a\007'
  printf '\033]4;10;#6bc46d\007'
  printf '\033]4;11;#daaa3f\007'
  printf '\033]4;12;#6cb6ff\007'
  printf '\033]4;13;#dcbdfb\007'
  printf '\033]4;14;#56d4dd\007'
  printf '\033]4;15;#cdd9e5\007'
  printf '\033]10;#adbac7\007'
  printf '\033]11;#22272e\007'
  printf '\033]12;#539bf5\007'
}
```

### GitHub Dark High Contrast

```bash
github_dark_high_contrast() {
  printf '\033]4;0;#7a828e\007'
  printf '\033]4;1;#ff9492\007'
  printf '\033]4;2;#26cd4d\007'
  printf '\033]4;3;#f0b72f\007'
  printf '\033]4;4;#71b7ff\007'
  printf '\033]4;5;#cb9eff\007'
  printf '\033]4;6;#39c5cf\007'
  printf '\033]4;7;#d9dee3\007'
  printf '\033]4;8;#9ea7b3\007'
  printf '\033]4;9;#ffb1af\007'
  printf '\033]4;10;#4ae168\007'
  printf '\033]4;11;#f7c843\007'
  printf '\033]4;12;#91cbff\007'
  printf '\033]4;13;#dbb7ff\007'
  printf '\033]4;14;#56d4dd\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f0f3f6\007'
  printf '\033]11;#0a0c10\007'
  printf '\033]12;#71b7ff\007'
}
```

### GitHub Light Colorblind

```bash
github_light_colorblind() {
  printf '\033]4;0;#24292f\007'
  printf '\033]4;1;#b35900\007'
  printf '\033]4;2;#0550ae\007'
  printf '\033]4;3;#4d2d00\007'
  printf '\033]4;4;#0969da\007'
  printf '\033]4;5;#8250df\007'
  printf '\033]4;6;#1b7c83\007'
  printf '\033]4;7;#6e7781\007'
  printf '\033]4;8;#57606a\007'
  printf '\033]4;9;#8a4600\007'
  printf '\033]4;10;#0969da\007'
  printf '\033]4;11;#633c01\007'
  printf '\033]4;12;#218bff\007'
  printf '\033]4;13;#a475f9\007'
  printf '\033]4;14;#3192aa\007'
  printf '\033]4;15;#8c959f\007'
  printf '\033]10;#24292f\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#0969da\007'
}
```

### GitHub Light Default

```bash
github_light_default() {
  printf '\033]4;0;#24292f\007'
  printf '\033]4;1;#cf222e\007'
  printf '\033]4;2;#116329\007'
  printf '\033]4;3;#4d2d00\007'
  printf '\033]4;4;#0969da\007'
  printf '\033]4;5;#8250df\007'
  printf '\033]4;6;#1b7c83\007'
  printf '\033]4;7;#6e7781\007'
  printf '\033]4;8;#57606a\007'
  printf '\033]4;9;#a40e26\007'
  printf '\033]4;10;#1a7f37\007'
  printf '\033]4;11;#633c01\007'
  printf '\033]4;12;#218bff\007'
  printf '\033]4;13;#a475f9\007'
  printf '\033]4;14;#3192aa\007'
  printf '\033]4;15;#8c959f\007'
  printf '\033]10;#1f2328\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#0969da\007'
}
```

### GitHub Light High Contrast

```bash
github_light_high_contrast() {
  printf '\033]4;0;#0e1116\007'
  printf '\033]4;1;#a0111f\007'
  printf '\033]4;2;#024c1a\007'
  printf '\033]4;3;#3f2200\007'
  printf '\033]4;4;#0349b4\007'
  printf '\033]4;5;#622cbc\007'
  printf '\033]4;6;#1b7c83\007'
  printf '\033]4;7;#66707b\007'
  printf '\033]4;8;#4b535d\007'
  printf '\033]4;9;#86061d\007'
  printf '\033]4;10;#055d20\007'
  printf '\033]4;11;#4e2c00\007'
  printf '\033]4;12;#1168e3\007'
  printf '\033]4;13;#844ae7\007'
  printf '\033]4;14;#3192aa\007'
  printf '\033]4;15;#88929d\007'
  printf '\033]10;#0e1116\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#0349b4\007'
}
```

### GitLab Dark

```bash
gitlab_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f57f6c\007'
  printf '\033]4;2;#52b87a\007'
  printf '\033]4;3;#d99530\007'
  printf '\033]4;4;#7fb6ed\007'
  printf '\033]4;5;#f88aaf\007'
  printf '\033]4;6;#32c5d2\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#fcb5aa\007'
  printf '\033]4;10;#91d4a8\007'
  printf '\033]4;11;#e9be74\007'
  printf '\033]4;12;#498dd1\007'
  printf '\033]4;13;#fcacc5\007'
  printf '\033]4;14;#5edee3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#28262b\007'
  printf '\033]12;#ffffff\007'
}
```

### GitLab Dark Grey

```bash
gitlab_dark_grey() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f57f6c\007'
  printf '\033]4;2;#52b87a\007'
  printf '\033]4;3;#d99530\007'
  printf '\033]4;4;#7fb6ed\007'
  printf '\033]4;5;#f88aaf\007'
  printf '\033]4;6;#32c5d2\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#fcb5aa\007'
  printf '\033]4;10;#91d4a8\007'
  printf '\033]4;11;#e9be74\007'
  printf '\033]4;12;#498dd1\007'
  printf '\033]4;13;#fcacc5\007'
  printf '\033]4;14;#5edee3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#ffffff\007'
}
```

### GitLab Light

```bash
gitlab_light() {
  printf '\033]4;0;#303030\007'
  printf '\033]4;1;#a31700\007'
  printf '\033]4;2;#0a7f3d\007'
  printf '\033]4;3;#af551d\007'
  printf '\033]4;4;#006cd8\007'
  printf '\033]4;5;#583cac\007'
  printf '\033]4;6;#00798a\007'
  printf '\033]4;7;#303030\007'
  printf '\033]4;8;#303030\007'
  printf '\033]4;9;#a31700\007'
  printf '\033]4;10;#0a7f3d\007'
  printf '\033]4;11;#af551d\007'
  printf '\033]4;12;#006cd8\007'
  printf '\033]4;13;#583cac\007'
  printf '\033]4;14;#00798a\007'
  printf '\033]4;15;#303030\007'
  printf '\033]10;#303030\007'
  printf '\033]11;#fafaff\007'
  printf '\033]12;#303030\007'
}
```

### Glacier

```bash
glacier() {
  printf '\033]4;0;#2e343c\007'
  printf '\033]4;1;#bd0f2f\007'
  printf '\033]4;2;#35a770\007'
  printf '\033]4;3;#fb9435\007'
  printf '\033]4;4;#1f5872\007'
  printf '\033]4;5;#bd2523\007'
  printf '\033]4;6;#778397\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#404a55\007'
  printf '\033]4;9;#bd0f2f\007'
  printf '\033]4;10;#49e998\007'
  printf '\033]4;11;#fddf6e\007'
  printf '\033]4;12;#2a8bc1\007'
  printf '\033]4;13;#ea4727\007'
  printf '\033]4;14;#a0b6d3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#0c1115\007'
  printf '\033]12;#6c6c6c\007'
}
```

### Grape

```bash
grape() {
  printf '\033]4;0;#2d283f\007'
  printf '\033]4;1;#ed2261\007'
  printf '\033]4;2;#1fa91b\007'
  printf '\033]4;3;#8ddc20\007'
  printf '\033]4;4;#487df4\007'
  printf '\033]4;5;#8d35c9\007'
  printf '\033]4;6;#3bdeed\007'
  printf '\033]4;7;#9e9ea0\007'
  printf '\033]4;8;#59516a\007'
  printf '\033]4;9;#f0729a\007'
  printf '\033]4;10;#53aa5e\007'
  printf '\033]4;11;#b2dc87\007'
  printf '\033]4;12;#a9bcec\007'
  printf '\033]4;13;#ad81c2\007'
  printf '\033]4;14;#9de3eb\007'
  printf '\033]4;15;#a288f7\007'
  printf '\033]10;#9f9fa1\007'
  printf '\033]11;#171423\007'
  printf '\033]12;#a288f7\007'
}
```

### Grass

```bash
grass() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff5959\007'
  printf '\033]4;2;#00bb00\007'
  printf '\033]4;3;#e7b000\007'
  printf '\033]4;4;#0000a3\007'
  printf '\033]4;5;#ee59bb\007'
  printf '\033]4;6;#00bbbb\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#959595\007'
  printf '\033]4;9;#ff5959\007'
  printf '\033]4;10;#00bb00\007'
  printf '\033]4;11;#e7b000\007'
  printf '\033]4;12;#0000bb\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#fff0a5\007'
  printf '\033]11;#13773d\007'
  printf '\033]12;#d9744c\007'
}
```

### Grey Green

```bash
grey_green() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fe1414\007'
  printf '\033]4;2;#74ff00\007'
  printf '\033]4;3;#f1ff01\007'
  printf '\033]4;4;#00deff\007'
  printf '\033]4;5;#ff00f0\007'
  printf '\033]4;6;#00ffbc\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#ff3939\007'
  printf '\033]4;10;#00ff44\007'
  printf '\033]4;11;#ffd100\007'
  printf '\033]4;12;#00afff\007'
  printf '\033]4;13;#ff008a\007'
  printf '\033]4;14;#00ffd3\007'
  printf '\033]4;15;#f5ecec\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#002a1a\007'
  printf '\033]12;#fff400\007'
}
```

### Gruber Darker

```bash
gruber_darker() {
  printf '\033]4;0;#181818\007'
  printf '\033]4;1;#ff0a36\007'
  printf '\033]4;2;#42dc00\007'
  printf '\033]4;3;#ffdb00\007'
  printf '\033]4;4;#92a7cb\007'
  printf '\033]4;5;#a095cb\007'
  printf '\033]4;6;#90aa9e\007'
  printf '\033]4;7;#e4e4e4\007'
  printf '\033]4;8;#54494e\007'
  printf '\033]4;9;#ff3851\007'
  printf '\033]4;10;#42dc00\007'
  printf '\033]4;11;#ffdb00\007'
  printf '\033]4;12;#92a7cb\007'
  printf '\033]4;13;#afafda\007'
  printf '\033]4;14;#90aa9e\007'
  printf '\033]4;15;#f5f5f5\007'
  printf '\033]10;#e4e4e4\007'
  printf '\033]11;#181818\007'
  printf '\033]12;#ffdb00\007'
}
```

### Gruvbox Dark

```bash
gruvbox_dark() {
  printf '\033]4;0;#282828\007'
  printf '\033]4;1;#cc241d\007'
  printf '\033]4;2;#98971a\007'
  printf '\033]4;3;#d79921\007'
  printf '\033]4;4;#458588\007'
  printf '\033]4;5;#b16286\007'
  printf '\033]4;6;#689d6a\007'
  printf '\033]4;7;#a89984\007'
  printf '\033]4;8;#928374\007'
  printf '\033]4;9;#fb4934\007'
  printf '\033]4;10;#b8bb26\007'
  printf '\033]4;11;#fabd2f\007'
  printf '\033]4;12;#83a598\007'
  printf '\033]4;13;#d3869b\007'
  printf '\033]4;14;#8ec07c\007'
  printf '\033]4;15;#ebdbb2\007'
  printf '\033]10;#ebdbb2\007'
  printf '\033]11;#282828\007'
  printf '\033]12;#ebdbb2\007'
}
```

### Gruvbox Dark Hard

```bash
gruvbox_dark_hard() {
  printf '\033]4;0;#1d2021\007'
  printf '\033]4;1;#cc241d\007'
  printf '\033]4;2;#98971a\007'
  printf '\033]4;3;#d79921\007'
  printf '\033]4;4;#458588\007'
  printf '\033]4;5;#b16286\007'
  printf '\033]4;6;#689d6a\007'
  printf '\033]4;7;#a89984\007'
  printf '\033]4;8;#928374\007'
  printf '\033]4;9;#fb4934\007'
  printf '\033]4;10;#b8bb26\007'
  printf '\033]4;11;#fabd2f\007'
  printf '\033]4;12;#83a598\007'
  printf '\033]4;13;#d3869b\007'
  printf '\033]4;14;#8ec07c\007'
  printf '\033]4;15;#ebdbb2\007'
  printf '\033]10;#ebdbb2\007'
  printf '\033]11;#1d2021\007'
  printf '\033]12;#ebdbb2\007'
}
```

### Gruvbox Light

```bash
gruvbox_light() {
  printf '\033]4;0;#fbf1c7\007'
  printf '\033]4;1;#cc241d\007'
  printf '\033]4;2;#98971a\007'
  printf '\033]4;3;#d79921\007'
  printf '\033]4;4;#458588\007'
  printf '\033]4;5;#b16286\007'
  printf '\033]4;6;#689d6a\007'
  printf '\033]4;7;#7c6f64\007'
  printf '\033]4;8;#928374\007'
  printf '\033]4;9;#9d0006\007'
  printf '\033]4;10;#79740e\007'
  printf '\033]4;11;#b57614\007'
  printf '\033]4;12;#076678\007'
  printf '\033]4;13;#8f3f71\007'
  printf '\033]4;14;#427b58\007'
  printf '\033]4;15;#3c3836\007'
  printf '\033]10;#3c3836\007'
  printf '\033]11;#fbf1c7\007'
  printf '\033]12;#3c3836\007'
}
```

### Gruvbox Light Hard

```bash
gruvbox_light_hard() {
  printf '\033]4;0;#f9f5d7\007'
  printf '\033]4;1;#cc241d\007'
  printf '\033]4;2;#98971a\007'
  printf '\033]4;3;#d79921\007'
  printf '\033]4;4;#458588\007'
  printf '\033]4;5;#b16286\007'
  printf '\033]4;6;#689d6a\007'
  printf '\033]4;7;#7c6f64\007'
  printf '\033]4;8;#928374\007'
  printf '\033]4;9;#9d0006\007'
  printf '\033]4;10;#79740e\007'
  printf '\033]4;11;#b57614\007'
  printf '\033]4;12;#076678\007'
  printf '\033]4;13;#8f3f71\007'
  printf '\033]4;14;#427b58\007'
  printf '\033]4;15;#3c3836\007'
  printf '\033]10;#3c3836\007'
  printf '\033]11;#f9f5d7\007'
  printf '\033]12;#3c3836\007'
}
```

### Gruvbox Material

```bash
gruvbox_material() {
  printf '\033]4;0;#141617\007'
  printf '\033]4;1;#ea6926\007'
  printf '\033]4;2;#c1d041\007'
  printf '\033]4;3;#eecf75\007'
  printf '\033]4;4;#6da3ec\007'
  printf '\033]4;5;#fd9bc1\007'
  printf '\033]4;6;#fe9d6e\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#d3573b\007'
  printf '\033]4;10;#c1d041\007'
  printf '\033]4;11;#eecf75\007'
  printf '\033]4;12;#2c86ff\007'
  printf '\033]4;13;#fd9bc1\007'
  printf '\033]4;14;#92a5df\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d4be98\007'
  printf '\033]11;#1d2021\007'
  printf '\033]12;#ffffff\007'
}
```

### Gruvbox Material Dark

```bash
gruvbox_material_dark() {
  printf '\033]4;0;#282828\007'
  printf '\033]4;1;#ea6962\007'
  printf '\033]4;2;#a9b665\007'
  printf '\033]4;3;#d8a657\007'
  printf '\033]4;4;#7daea3\007'
  printf '\033]4;5;#d3869b\007'
  printf '\033]4;6;#89b482\007'
  printf '\033]4;7;#d4be98\007'
  printf '\033]4;8;#7c6f64\007'
  printf '\033]4;9;#ea6962\007'
  printf '\033]4;10;#a9b665\007'
  printf '\033]4;11;#d8a657\007'
  printf '\033]4;12;#7daea3\007'
  printf '\033]4;13;#d3869b\007'
  printf '\033]4;14;#89b482\007'
  printf '\033]4;15;#ddc7a1\007'
  printf '\033]10;#d4be98\007'
  printf '\033]11;#282828\007'
  printf '\033]12;#d4be98\007'
}
```

### Gruvbox Material Light

```bash
gruvbox_material_light() {
  printf '\033]4;0;#fbf1c7\007'
  printf '\033]4;1;#c14a4a\007'
  printf '\033]4;2;#6c782e\007'
  printf '\033]4;3;#b47109\007'
  printf '\033]4;4;#45707a\007'
  printf '\033]4;5;#945e80\007'
  printf '\033]4;6;#4c7a5d\007'
  printf '\033]4;7;#654735\007'
  printf '\033]4;8;#a89984\007'
  printf '\033]4;9;#c14a4a\007'
  printf '\033]4;10;#6c782e\007'
  printf '\033]4;11;#b47109\007'
  printf '\033]4;12;#45707a\007'
  printf '\033]4;13;#945e80\007'
  printf '\033]4;14;#4c7a5d\007'
  printf '\033]4;15;#4f3829\007'
  printf '\033]10;#654735\007'
  printf '\033]11;#fbf1c7\007'
  printf '\033]12;#654735\007'
}
```

### Guezwhoz

```bash
guezwhoz() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#e85181\007'
  printf '\033]4;2;#7ad694\007'
  printf '\033]4;3;#b7d074\007'
  printf '\033]4;4;#5aa0d6\007'
  printf '\033]4;5;#9a90e0\007'
  printf '\033]4;6;#58d6ce\007'
  printf '\033]4;7;#d9d9d9\007'
  printf '\033]4;8;#808080\007'
  printf '\033]4;9;#e85181\007'
  printf '\033]4;10;#afd7af\007'
  printf '\033]4;11;#d1ed85\007'
  printf '\033]4;12;#64b2ed\007'
  printf '\033]4;13;#a398ed\007'
  printf '\033]4;14;#61ede4\007'
  printf '\033]4;15;#ededed\007'
  printf '\033]10;#d9d9d9\007'
  printf '\033]11;#1d1d1d\007'
  printf '\033]12;#99d4b1\007'
}
```

### Hacktober

```bash
hacktober() {
  printf '\033]4;0;#191918\007'
  printf '\033]4;1;#b34538\007'
  printf '\033]4;2;#587744\007'
  printf '\033]4;3;#d08949\007'
  printf '\033]4;4;#206ec5\007'
  printf '\033]4;5;#864651\007'
  printf '\033]4;6;#ac9166\007'
  printf '\033]4;7;#f1eee7\007'
  printf '\033]4;8;#464444\007'
  printf '\033]4;9;#b33323\007'
  printf '\033]4;10;#42824a\007'
  printf '\033]4;11;#c75a22\007'
  printf '\033]4;12;#5389c5\007'
  printf '\033]4;13;#e795a5\007'
  printf '\033]4;14;#ebc587\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c9c9c9\007'
  printf '\033]11;#141414\007'
  printf '\033]12;#c9c9c9\007'
}
```

### Hardcore

```bash
hardcore() {
  printf '\033]4;0;#1b1d1e\007'
  printf '\033]4;1;#f92672\007'
  printf '\033]4;2;#a6e22e\007'
  printf '\033]4;3;#fd971f\007'
  printf '\033]4;4;#66d9ef\007'
  printf '\033]4;5;#9e6ffe\007'
  printf '\033]4;6;#5e7175\007'
  printf '\033]4;7;#ccccc6\007'
  printf '\033]4;8;#505354\007'
  printf '\033]4;9;#ff669d\007'
  printf '\033]4;10;#beed5f\007'
  printf '\033]4;11;#e6db74\007'
  printf '\033]4;12;#66d9ef\007'
  printf '\033]4;13;#9e6ffe\007'
  printf '\033]4;14;#a3babf\007'
  printf '\033]4;15;#f8f8f2\007'
  printf '\033]10;#a0a0a0\007'
  printf '\033]11;#121212\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Harper

```bash
harper() {
  printf '\033]4;0;#010101\007'
  printf '\033]4;1;#f8b63f\007'
  printf '\033]4;2;#7fb5e1\007'
  printf '\033]4;3;#d6da25\007'
  printf '\033]4;4;#489e48\007'
  printf '\033]4;5;#b296c6\007'
  printf '\033]4;6;#f5bfd7\007'
  printf '\033]4;7;#a8a49d\007'
  printf '\033]4;8;#726e6a\007'
  printf '\033]4;9;#f8b63f\007'
  printf '\033]4;10;#7fb5e1\007'
  printf '\033]4;11;#d6da25\007'
  printf '\033]4;12;#489e48\007'
  printf '\033]4;13;#b296c6\007'
  printf '\033]4;14;#f5bfd7\007'
  printf '\033]4;15;#fefbea\007'
  printf '\033]10;#a8a49d\007'
  printf '\033]11;#010101\007'
  printf '\033]12;#a8a49d\007'
}
```

### Havn Daggry

```bash
havn_daggry() {
  printf '\033]4;0;#1f2842\007'
  printf '\033]4;1;#985248\007'
  printf '\033]4;2;#577159\007'
  printf '\033]4;3;#be6b00\007'
  printf '\033]4;4;#3a577d\007'
  printf '\033]4;5;#7c5c97\007'
  printf '\033]4;6;#925780\007'
  printf '\033]4;7;#b0b5c5\007'
  printf '\033]4;8;#1f2842\007'
  printf '\033]4;9;#cc4a35\007'
  printf '\033]4;10;#719679\007'
  printf '\033]4;11;#f1a527\007'
  printf '\033]4;12;#6089c0\007'
  printf '\033]4;13;#7d7396\007'
  printf '\033]4;14;#aa869d\007'
  printf '\033]4;15;#d6dbeb\007'
  printf '\033]10;#3b4a7a\007'
  printf '\033]11;#f8f9fb\007'
  printf '\033]12;#226c4f\007'
}
```

### Havn Skumring

```bash
havn_skumring() {
  printf '\033]4;0;#252c47\007'
  printf '\033]4;1;#ea563e\007'
  printf '\033]4;2;#6ead7b\007'
  printf '\033]4;3;#f8b330\007'
  printf '\033]4;4;#596cf7\007'
  printf '\033]4;5;#7c719e\007'
  printf '\033]4;6;#d588c1\007'
  printf '\033]4;7;#dce0ee\007'
  printf '\033]4;8;#38425c\007'
  printf '\033]4;9;#d17264\007'
  printf '\033]4;10;#8c9e8f\007'
  printf '\033]4;11;#eac58c\007'
  printf '\033]4;12;#5186cb\007'
  printf '\033]4;13;#9b7cee\007'
  printf '\033]4;14;#d17ab6\007'
  printf '\033]4;15;#fff6e1\007'
  printf '\033]10;#d6dbeb\007'
  printf '\033]11;#111522\007'
  printf '\033]12;#277a6f\007'
}
```

### HaX0R Blue

```bash
hax0r_blue() {
  printf '\033]4;0;#010921\007'
  printf '\033]4;1;#10b6ff\007'
  printf '\033]4;2;#10b6ff\007'
  printf '\033]4;3;#10b6ff\007'
  printf '\033]4;4;#10b6ff\007'
  printf '\033]4;5;#10b6ff\007'
  printf '\033]4;6;#10b6ff\007'
  printf '\033]4;7;#fafafa\007'
  printf '\033]4;8;#484157\007'
  printf '\033]4;9;#00b3f7\007'
  printf '\033]4;10;#00b3f7\007'
  printf '\033]4;11;#00b3f7\007'
  printf '\033]4;12;#00b3f7\007'
  printf '\033]4;13;#00b3f7\007'
  printf '\033]4;14;#00b3f7\007'
  printf '\033]4;15;#fefefe\007'
  printf '\033]10;#11b7ff\007'
  printf '\033]11;#010515\007'
  printf '\033]12;#10b6ff\007'
}
```

### HaX0R Gr33N

```bash
hax0r_gr33n() {
  printf '\033]4;0;#001f0b\007'
  printf '\033]4;1;#15d00d\007'
  printf '\033]4;2;#15d00d\007'
  printf '\033]4;3;#15d00d\007'
  printf '\033]4;4;#15d00d\007'
  printf '\033]4;5;#15d00d\007'
  printf '\033]4;6;#15d00d\007'
  printf '\033]4;7;#fafafa\007'
  printf '\033]4;8;#334843\007'
  printf '\033]4;9;#19e20e\007'
  printf '\033]4;10;#19e20e\007'
  printf '\033]4;11;#19e20e\007'
  printf '\033]4;12;#19e20e\007'
  printf '\033]4;13;#19e20e\007'
  printf '\033]4;14;#19e20e\007'
  printf '\033]4;15;#fefefe\007'
  printf '\033]10;#16b10e\007'
  printf '\033]11;#020f01\007'
  printf '\033]12;#15d00d\007'
}
```

### HaX0R R3D

```bash
hax0r_r3d() {
  printf '\033]4;0;#1f0000\007'
  printf '\033]4;1;#b00d0d\007'
  printf '\033]4;2;#b00d0d\007'
  printf '\033]4;3;#b00d0d\007'
  printf '\033]4;4;#b00d0d\007'
  printf '\033]4;5;#b00d0d\007'
  printf '\033]4;6;#b00d0d\007'
  printf '\033]4;7;#fafafa\007'
  printf '\033]4;8;#554040\007'
  printf '\033]4;9;#ff1111\007'
  printf '\033]4;10;#ff1010\007'
  printf '\033]4;11;#ff1010\007'
  printf '\033]4;12;#ff1010\007'
  printf '\033]4;13;#ff1010\007'
  printf '\033]4;14;#ff1010\007'
  printf '\033]4;15;#fefefe\007'
  printf '\033]10;#b10e0e\007'
  printf '\033]11;#200101\007'
  printf '\033]12;#b00d0d\007'
}
```

### Heeler

```bash
heeler() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e44c2e\007'
  printf '\033]4;2;#bdd100\007'
  printf '\033]4;3;#f4ce65\007'
  printf '\033]4;4;#5ba5f2\007'
  printf '\033]4;5;#ff95c2\007'
  printf '\033]4;6;#ff9763\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#e44c2e\007'
  printf '\033]4;10;#bdd100\007'
  printf '\033]4;11;#f4ce65\007'
  printf '\033]4;12;#0088ff\007'
  printf '\033]4;13;#ff95c2\007'
  printf '\033]4;14;#8da6e4\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#fdfdfd\007'
  printf '\033]11;#211f46\007'
  printf '\033]12;#ffffff\007'
}
```

### Highway

```bash
highway() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d00e18\007'
  printf '\033]4;2;#138034\007'
  printf '\033]4;3;#ffcb3e\007'
  printf '\033]4;4;#006bb3\007'
  printf '\033]4;5;#783482\007'
  printf '\033]4;6;#455271\007'
  printf '\033]4;7;#ededed\007'
  printf '\033]4;8;#5d504a\007'
  printf '\033]4;9;#f07e18\007'
  printf '\033]4;10;#b1d130\007'
  printf '\033]4;11;#fff120\007'
  printf '\033]4;12;#4fc2fd\007'
  printf '\033]4;13;#de0071\007'
  printf '\033]4;14;#5d504a\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ededed\007'
  printf '\033]11;#222225\007'
  printf '\033]12;#e0d9b9\007'
}
```

### Hipster Green

```bash
hipster_green() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b6214a\007'
  printf '\033]4;2;#00a600\007'
  printf '\033]4;3;#bfbf00\007'
  printf '\033]4;4;#246eb2\007'
  printf '\033]4;5;#b200b2\007'
  printf '\033]4;6;#00a6b2\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e50000\007'
  printf '\033]4;10;#86a93e\007'
  printf '\033]4;11;#e5e500\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00e5e5\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#84c138\007'
  printf '\033]11;#100b05\007'
  printf '\033]12;#23ff18\007'
}
```

### Hivacruz

```bash
hivacruz() {
  printf '\033]4;0;#202746\007'
  printf '\033]4;1;#c94922\007'
  printf '\033]4;2;#ac9739\007'
  printf '\033]4;3;#c08b30\007'
  printf '\033]4;4;#3d8fd1\007'
  printf '\033]4;5;#6679cc\007'
  printf '\033]4;6;#22a2c9\007'
  printf '\033]4;7;#979db4\007'
  printf '\033]4;8;#6b7394\007'
  printf '\033]4;9;#c76b29\007'
  printf '\033]4;10;#73ad43\007'
  printf '\033]4;11;#5e6687\007'
  printf '\033]4;12;#898ea4\007'
  printf '\033]4;13;#dfe2f1\007'
  printf '\033]4;14;#9c637a\007'
  printf '\033]4;15;#f5f7ff\007'
  printf '\033]10;#ede4e4\007'
  printf '\033]11;#132638\007'
  printf '\033]12;#979db4\007'
}
```

### Homebrew

```bash
homebrew() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#990000\007'
  printf '\033]4;2;#00a600\007'
  printf '\033]4;3;#999900\007'
  printf '\033]4;4;#0d0dbf\007'
  printf '\033]4;5;#b200b2\007'
  printf '\033]4;6;#00a6b2\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e50000\007'
  printf '\033]4;10;#00d900\007'
  printf '\033]4;11;#e5e500\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00e5e5\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#00ff00\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#23ff18\007'
}
```

### Hopscotch

```bash
hopscotch() {
  printf '\033]4;0;#322931\007'
  printf '\033]4;1;#dd464c\007'
  printf '\033]4;2;#8fc13e\007'
  printf '\033]4;3;#fdcc59\007'
  printf '\033]4;4;#1290bf\007'
  printf '\033]4;5;#c85e7c\007'
  printf '\033]4;6;#149b93\007'
  printf '\033]4;7;#b9b5b8\007'
  printf '\033]4;8;#797379\007'
  printf '\033]4;9;#fd8b19\007'
  printf '\033]4;10;#5c545c\007'
  printf '\033]4;11;#5c545b\007'
  printf '\033]4;12;#989498\007'
  printf '\033]4;13;#d5d3d5\007'
  printf '\033]4;14;#b33508\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b9b5b8\007'
  printf '\033]11;#322931\007'
  printf '\033]12;#b9b5b8\007'
}
```

### Hopscotch.256

```bash
hopscotch_256() {
  printf '\033]4;0;#322931\007'
  printf '\033]4;1;#dd464c\007'
  printf '\033]4;2;#8fc13e\007'
  printf '\033]4;3;#fdcc59\007'
  printf '\033]4;4;#1290bf\007'
  printf '\033]4;5;#c85e7c\007'
  printf '\033]4;6;#149b93\007'
  printf '\033]4;7;#b9b5b8\007'
  printf '\033]4;8;#797379\007'
  printf '\033]4;9;#dd464c\007'
  printf '\033]4;10;#8fc13e\007'
  printf '\033]4;11;#fdcc59\007'
  printf '\033]4;12;#1290bf\007'
  printf '\033]4;13;#c85e7c\007'
  printf '\033]4;14;#149b93\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b9b5b8\007'
  printf '\033]11;#322931\007'
  printf '\033]12;#b9b5b8\007'
}
```

### Horizon

```bash
horizon() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e95678\007'
  printf '\033]4;2;#29d398\007'
  printf '\033]4;3;#fab795\007'
  printf '\033]4;4;#26bbd9\007'
  printf '\033]4;5;#ee64ac\007'
  printf '\033]4;6;#59e1e3\007'
  printf '\033]4;7;#e5e5e5\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#ec6a88\007'
  printf '\033]4;10;#3fdaa4\007'
  printf '\033]4;11;#fbc3a7\007'
  printf '\033]4;12;#3fc4de\007'
  printf '\033]4;13;#f075b5\007'
  printf '\033]4;14;#6be4e6\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#d5d8da\007'
  printf '\033]11;#1c1e26\007'
  printf '\033]12;#6c6f93\007'
}
```

### Horizon Bright

```bash
horizon_bright() {
  printf '\033]4;0;#16161d\007'
  printf '\033]4;1;#fc4777\007'
  printf '\033]4;2;#00ca86\007'
  printf '\033]4;3;#f2a682\007'
  printf '\033]4;4;#00bedd\007'
  printf '\033]4;5;#ff58b1\007'
  printf '\033]4;6;#00cdcb\007'
  printf '\033]4;7;#bfafac\007'
  printf '\033]4;8;#1a1c24\007'
  printf '\033]4;9;#fe5f87\007'
  printf '\033]4;10;#00d193\007'
  printf '\033]4;11;#e5a688\007'
  printf '\033]4;12;#00c9e2\007'
  printf '\033]4;13;#ff6cba\007'
  printf '\033]4;14;#00c3c2\007'
  printf '\033]4;15;#fff2ef\007'
  printf '\033]10;#16161d\007'
  printf '\033]11;#fdf0ed\007'
  printf '\033]12;#d3a89d\007'
}
```

### Hot Dog Stand

```bash
hot_dog_stand() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ffff54\007'
  printf '\033]4;2;#ffff54\007'
  printf '\033]4;3;#ffff54\007'
  printf '\033]4;4;#000000\007'
  printf '\033]4;5;#ffff54\007'
  printf '\033]4;6;#ffffff\007'
  printf '\033]4;7;#c6c6c6\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#ffff54\007'
  printf '\033]4;10;#ffff54\007'
  printf '\033]4;11;#ffff54\007'
  printf '\033]4;12;#000000\007'
  printf '\033]4;13;#ffff54\007'
  printf '\033]4;14;#ffffff\007'
  printf '\033]4;15;#c6c6c6\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#ea3323\007'
  printf '\033]12;#ffff54\007'
}
```

### Hot Dog Stand (Mustard)

```bash
hot_dog_stand_mustard() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ea3323\007'
  printf '\033]4;2;#ea3323\007'
  printf '\033]4;3;#ea3323\007'
  printf '\033]4;4;#000000\007'
  printf '\033]4;5;#ea3323\007'
  printf '\033]4;6;#000000\007'
  printf '\033]4;7;#b9b9b9\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#ea3323\007'
  printf '\033]4;10;#ea3323\007'
  printf '\033]4;11;#ea3323\007'
  printf '\033]4;12;#000000\007'
  printf '\033]4;13;#ea3323\007'
  printf '\033]4;14;#000000\007'
  printf '\033]4;15;#c6c6c6\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffff54\007'
  printf '\033]12;#ea3323\007'
}
```

### Hurtado

```bash
hurtado() {
  printf '\033]4;0;#575757\007'
  printf '\033]4;1;#ff1b00\007'
  printf '\033]4;2;#a5e055\007'
  printf '\033]4;3;#fbe74a\007'
  printf '\033]4;4;#496487\007'
  printf '\033]4;5;#fd5ff1\007'
  printf '\033]4;6;#86e9fe\007'
  printf '\033]4;7;#cbcccb\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#d51d00\007'
  printf '\033]4;10;#a5df55\007'
  printf '\033]4;11;#fbe84a\007'
  printf '\033]4;12;#89beff\007'
  printf '\033]4;13;#c001c1\007'
  printf '\033]4;14;#86eafe\007'
  printf '\033]4;15;#dbdbdb\007'
  printf '\033]10;#dbdbdb\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Hybrid

```bash
hybrid() {
  printf '\033]4;0;#2a2e33\007'
  printf '\033]4;1;#b84d51\007'
  printf '\033]4;2;#b3bf5a\007'
  printf '\033]4;3;#e4b55e\007'
  printf '\033]4;4;#6e90b0\007'
  printf '\033]4;5;#a17eac\007'
  printf '\033]4;6;#7fbfb4\007'
  printf '\033]4;7;#b5b9b6\007'
  printf '\033]4;8;#434548\007'
  printf '\033]4;9;#8d2e32\007'
  printf '\033]4;10;#798431\007'
  printf '\033]4;11;#e58a50\007'
  printf '\033]4;12;#4b6b88\007'
  printf '\033]4;13;#6e5079\007'
  printf '\033]4;14;#4d7b74\007'
  printf '\033]4;15;#5a626a\007'
  printf '\033]10;#b7bcba\007'
  printf '\033]11;#161719\007'
  printf '\033]12;#b7bcba\007'
}
```

### IBM 5153 CGA

```bash
ibm_5153_cga() {
  printf '\033]4;0;#141414\007'
  printf '\033]4;1;#d03333\007'
  printf '\033]4;2;#1bd01b\007'
  printf '\033]4;3;#d08c1b\007'
  printf '\033]4;4;#1b1bd0\007'
  printf '\033]4;5;#d01bd0\007'
  printf '\033]4;6;#1bd0d0\007'
  printf '\033]4;7;#cecece\007'
  printf '\033]4;8;#4e4e4e\007'
  printf '\033]4;9;#dc4e4e\007'
  printf '\033]4;10;#4edc4e\007'
  printf '\033]4;11;#f3f34e\007'
  printf '\033]4;12;#4e4edc\007'
  printf '\033]4;13;#f34ef3\007'
  printf '\033]4;14;#4ef3f3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cecece\007'
  printf '\033]11;#141414\007'
  printf '\033]12;#cecece\007'
}
```

### IBM 5153 CGA (Black)

```bash
ibm_5153_cga_black() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c40000\007'
  printf '\033]4;2;#00c400\007'
  printf '\033]4;3;#c47e00\007'
  printf '\033]4;4;#0000c4\007'
  printf '\033]4;5;#c400c4\007'
  printf '\033]4;6;#00c4c4\007'
  printf '\033]4;7;#c4c4c4\007'
  printf '\033]4;8;#4e4e4e\007'
  printf '\033]4;9;#dc4e4e\007'
  printf '\033]4;10;#4edc4e\007'
  printf '\033]4;11;#f3f34e\007'
  printf '\033]4;12;#4e4edc\007'
  printf '\033]4;13;#f34ef3\007'
  printf '\033]4;14;#4ef3f3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c4c4c4\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c4c4c4\007'
}
```

### IC Green PPL

```bash
ic_green_ppl() {
  printf '\033]4;0;#014401\007'
  printf '\033]4;1;#ff2736\007'
  printf '\033]4;2;#41a638\007'
  printf '\033]4;3;#76a831\007'
  printf '\033]4;4;#2ec3b9\007'
  printf '\033]4;5;#50a096\007'
  printf '\033]4;6;#3ca078\007'
  printf '\033]4;7;#e6fef2\007'
  printf '\033]4;8;#106910\007'
  printf '\033]4;9;#b4fa5c\007'
  printf '\033]4;10;#aefb86\007'
  printf '\033]4;11;#dafa87\007'
  printf '\033]4;12;#2efaeb\007'
  printf '\033]4;13;#50fafa\007'
  printf '\033]4;14;#3cfac8\007'
  printf '\033]4;15;#e0f1dc\007'
  printf '\033]10;#e0f1dc\007'
  printf '\033]11;#2c2c2c\007'
  printf '\033]12;#47fa6b\007'
}
```

### IC Orange PPL

```bash
ic_orange_ppl() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c13900\007'
  printf '\033]4;2;#a4a900\007'
  printf '\033]4;3;#caaf00\007'
  printf '\033]4;4;#bd6d00\007'
  printf '\033]4;5;#fc5e00\007'
  printf '\033]4;6;#f79500\007'
  printf '\033]4;7;#ffc88a\007'
  printf '\033]4;8;#6a4f2a\007'
  printf '\033]4;9;#ff8c68\007'
  printf '\033]4;10;#f6ff40\007'
  printf '\033]4;11;#ffe36e\007'
  printf '\033]4;12;#ffbe55\007'
  printf '\033]4;13;#fc874f\007'
  printf '\033]4;14;#c69752\007'
  printf '\033]4;15;#fafaff\007'
  printf '\033]10;#ffcb83\007'
  printf '\033]11;#262626\007'
  printf '\033]12;#fc531d\007'
}
```

### Iceberg Dark

```bash
iceberg_dark() {
  printf '\033]4;0;#1e2132\007'
  printf '\033]4;1;#e27878\007'
  printf '\033]4;2;#b4be82\007'
  printf '\033]4;3;#e2a478\007'
  printf '\033]4;4;#84a0c6\007'
  printf '\033]4;5;#a093c7\007'
  printf '\033]4;6;#89b8c2\007'
  printf '\033]4;7;#c6c8d1\007'
  printf '\033]4;8;#6b7089\007'
  printf '\033]4;9;#e98989\007'
  printf '\033]4;10;#c0ca8e\007'
  printf '\033]4;11;#e9b189\007'
  printf '\033]4;12;#91acd1\007'
  printf '\033]4;13;#ada0d3\007'
  printf '\033]4;14;#95c4ce\007'
  printf '\033]4;15;#d2d4de\007'
  printf '\033]10;#c6c8d1\007'
  printf '\033]11;#161821\007'
  printf '\033]12;#c6c8d1\007'
}
```

### Iceberg Light

```bash
iceberg_light() {
  printf '\033]4;0;#dcdfe7\007'
  printf '\033]4;1;#cc517a\007'
  printf '\033]4;2;#668e3d\007'
  printf '\033]4;3;#c57339\007'
  printf '\033]4;4;#2d539e\007'
  printf '\033]4;5;#7759b4\007'
  printf '\033]4;6;#3f83a6\007'
  printf '\033]4;7;#33374c\007'
  printf '\033]4;8;#8389a3\007'
  printf '\033]4;9;#cc3768\007'
  printf '\033]4;10;#598030\007'
  printf '\033]4;11;#b6662d\007'
  printf '\033]4;12;#22478e\007'
  printf '\033]4;13;#6845ad\007'
  printf '\033]4;14;#327698\007'
  printf '\033]4;15;#262a3f\007'
  printf '\033]10;#33374c\007'
  printf '\033]11;#e8e9ec\007'
  printf '\033]12;#33374c\007'
}
```

### Idea

```bash
idea() {
  printf '\033]4;0;#adadad\007'
  printf '\033]4;1;#fc5256\007'
  printf '\033]4;2;#98b61c\007'
  printf '\033]4;3;#ccb444\007'
  printf '\033]4;4;#437ee7\007'
  printf '\033]4;5;#9d74b0\007'
  printf '\033]4;6;#248887\007'
  printf '\033]4;7;#4b4b4b\007'
  printf '\033]4;8;#ffffff\007'
  printf '\033]4;9;#fc7072\007'
  printf '\033]4;10;#98b61c\007'
  printf '\033]4;11;#ffff0b\007'
  printf '\033]4;12;#6c9ced\007'
  printf '\033]4;13;#fc7eff\007'
  printf '\033]4;14;#248887\007'
  printf '\033]4;15;#181818\007'
  printf '\033]10;#adadad\007'
  printf '\033]11;#202020\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Idle Toes

```bash
idle_toes() {
  printf '\033]4;0;#323232\007'
  printf '\033]4;1;#d25252\007'
  printf '\033]4;2;#7fe173\007'
  printf '\033]4;3;#ffc66d\007'
  printf '\033]4;4;#4099ff\007'
  printf '\033]4;5;#f680ff\007'
  printf '\033]4;6;#bed6ff\007'
  printf '\033]4;7;#eeeeec\007'
  printf '\033]4;8;#606060\007'
  printf '\033]4;9;#f07070\007'
  printf '\033]4;10;#9dff91\007'
  printf '\033]4;11;#ffe48b\007'
  printf '\033]4;12;#5eb7f7\007'
  printf '\033]4;13;#ff9dff\007'
  printf '\033]4;14;#dcf4ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#323232\007'
  printf '\033]12;#d6d6d6\007'
}
```

### IR Black

```bash
ir_black() {
  printf '\033]4;0;#4f4f4f\007'
  printf '\033]4;1;#fa6c60\007'
  printf '\033]4;2;#a8ff60\007'
  printf '\033]4;3;#fffeb7\007'
  printf '\033]4;4;#96cafe\007'
  printf '\033]4;5;#fa73fd\007'
  printf '\033]4;6;#c6c5fe\007'
  printf '\033]4;7;#efedef\007'
  printf '\033]4;8;#7b7b7b\007'
  printf '\033]4;9;#fcb6b0\007'
  printf '\033]4;10;#cfffab\007'
  printf '\033]4;11;#ffffcc\007'
  printf '\033]4;12;#b5dcff\007'
  printf '\033]4;13;#fb9cfe\007'
  printf '\033]4;14;#e0e0fe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f1f1f1\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#808080\007'
}
```

### IRIX Console

```bash
irix_console() {
  printf '\033]4;0;#1a1919\007'
  printf '\033]4;1;#d42426\007'
  printf '\033]4;2;#37a327\007'
  printf '\033]4;3;#c29d28\007'
  printf '\033]4;4;#0739e2\007'
  printf '\033]4;5;#911f9c\007'
  printf '\033]4;6;#4497df\007'
  printf '\033]4;7;#cccccc\007'
  printf '\033]4;8;#767676\007'
  printf '\033]4;9;#f34f59\007'
  printf '\033]4;10;#45c731\007'
  printf '\033]4;11;#f9f2a7\007'
  printf '\033]4;12;#4079ff\007'
  printf '\033]4;13;#c31ba2\007'
  printf '\033]4;14;#6ed7d7\007'
  printf '\033]4;15;#f2f2f2\007'
  printf '\033]10;#f2f2f2\007'
  printf '\033]11;#0c0c0c\007'
  printf '\033]12;#c7c7c7\007'
}
```

### IRIX Terminal

```bash
irix_terminal() {
  printf '\033]4;0;#1a1919\007'
  printf '\033]4;1;#ff2b1e\007'
  printf '\033]4;2;#57ff3d\007'
  printf '\033]4;3;#ffff44\007'
  printf '\033]4;4;#0004ff\007'
  printf '\033]4;5;#ff2cff\007'
  printf '\033]4;6;#56ffff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#ffff44\007'
  printf '\033]4;9;#ffff44\007'
  printf '\033]4;10;#ffff44\007'
  printf '\033]4;11;#fffc72\007'
  printf '\033]4;12;#ffff44\007'
  printf '\033]4;13;#ffff44\007'
  printf '\033]4;14;#ffff44\007'
  printf '\033]4;15;#ffff44\007'
  printf '\033]10;#f2f2f2\007'
  printf '\033]11;#000043\007'
  printf '\033]12;#c7c7c7\007'
}
```

### iTerm2 Dark Background

```bash
iterm2_dark_background() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c91b00\007'
  printf '\033]4;2;#00c200\007'
  printf '\033]4;3;#c7c400\007'
  printf '\033]4;4;#0225c7\007'
  printf '\033]4;5;#ca30c7\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#5ffa68\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#ff77ff\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c7c7c7\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c7c7c7\007'
}
```

### iTerm2 Default

```bash
iterm2_default() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c91b00\007'
  printf '\033]4;2;#00c200\007'
  printf '\033]4;3;#c7c400\007'
  printf '\033]4;4;#2225c4\007'
  printf '\033]4;5;#ca30c7\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#5ffa68\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#ff77ff\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#e5e5e5\007'
}
```

### iTerm2 Light Background

```bash
iterm2_light_background() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c91b00\007'
  printf '\033]4;2;#00c200\007'
  printf '\033]4;3;#c7c400\007'
  printf '\033]4;4;#0225c7\007'
  printf '\033]4;5;#ca30c7\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#bababa\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#39d442\007'
  printf '\033]4;11;#ccc934\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#ff77ff\007'
  printf '\033]4;14;#3ad7d9\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### iTerm2 Pastel Dark Background

```bash
iterm2_pastel_dark_background() {
  printf '\033]4;0;#626262\007'
  printf '\033]4;1;#ff8373\007'
  printf '\033]4;2;#b4fb73\007'
  printf '\033]4;3;#fffdc3\007'
  printf '\033]4;4;#a5d5fe\007'
  printf '\033]4;5;#ff90fe\007'
  printf '\033]4;6;#d1d1fe\007'
  printf '\033]4;7;#f1f1f1\007'
  printf '\033]4;8;#8f8f8f\007'
  printf '\033]4;9;#ffc4be\007'
  printf '\033]4;10;#d6fcba\007'
  printf '\033]4;11;#fffed5\007'
  printf '\033]4;12;#c2e3ff\007'
  printf '\033]4;13;#ffb2fe\007'
  printf '\033]4;14;#e6e6fe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c7c7c7\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffb473\007'
}
```

### iTerm2 Smoooooth

```bash
iterm2_smoooooth() {
  printf '\033]4;0;#14191e\007'
  printf '\033]4;1;#b43c2a\007'
  printf '\033]4;2;#00c200\007'
  printf '\033]4;3;#c7c400\007'
  printf '\033]4;4;#2744c7\007'
  printf '\033]4;5;#c040be\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#dd7975\007'
  printf '\033]4;10;#58e790\007'
  printf '\033]4;11;#ece100\007'
  printf '\033]4;12;#a7abf2\007'
  printf '\033]4;13;#e17ee1\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dcdcdc\007'
  printf '\033]11;#15191f\007'
  printf '\033]12;#ffffff\007'
}
```

### iTerm2 Solarized Dark

```bash
iterm2_solarized_dark() {
  printf '\033]4;0;#073642\007'
  printf '\033]4;1;#dc322f\007'
  printf '\033]4;2;#859900\007'
  printf '\033]4;3;#b58900\007'
  printf '\033]4;4;#268bd2\007'
  printf '\033]4;5;#d33682\007'
  printf '\033]4;6;#2aa198\007'
  printf '\033]4;7;#eee8d5\007'
  printf '\033]4;8;#335e69\007'
  printf '\033]4;9;#cb4b16\007'
  printf '\033]4;10;#586e75\007'
  printf '\033]4;11;#657b83\007'
  printf '\033]4;12;#839496\007'
  printf '\033]4;13;#6c71c4\007'
  printf '\033]4;14;#93a1a1\007'
  printf '\033]4;15;#fdf6e3\007'
  printf '\033]10;#839496\007'
  printf '\033]11;#002b36\007'
  printf '\033]12;#839496\007'
}
```

### iTerm2 Solarized Light

```bash
iterm2_solarized_light() {
  printf '\033]4;0;#073642\007'
  printf '\033]4;1;#dc322f\007'
  printf '\033]4;2;#859900\007'
  printf '\033]4;3;#b58900\007'
  printf '\033]4;4;#268bd2\007'
  printf '\033]4;5;#d33682\007'
  printf '\033]4;6;#2aa198\007'
  printf '\033]4;7;#bbb5a2\007'
  printf '\033]4;8;#002b36\007'
  printf '\033]4;9;#cb4b16\007'
  printf '\033]4;10;#586e75\007'
  printf '\033]4;11;#657b83\007'
  printf '\033]4;12;#839496\007'
  printf '\033]4;13;#6c71c4\007'
  printf '\033]4;14;#93a1a1\007'
  printf '\033]4;15;#fdf6e3\007'
  printf '\033]10;#657b83\007'
  printf '\033]11;#fdf6e3\007'
  printf '\033]12;#657b83\007'
}
```

### iTerm2 Tango Dark

```bash
iterm2_tango_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d81e00\007'
  printf '\033]4;2;#5ea702\007'
  printf '\033]4;3;#cfae00\007'
  printf '\033]4;4;#427ab3\007'
  printf '\033]4;5;#89658e\007'
  printf '\033]4;6;#00a7aa\007'
  printf '\033]4;7;#dbded8\007'
  printf '\033]4;8;#686a66\007'
  printf '\033]4;9;#f54235\007'
  printf '\033]4;10;#99e343\007'
  printf '\033]4;11;#fdeb61\007'
  printf '\033]4;12;#84b0d8\007'
  printf '\033]4;13;#bc94b7\007'
  printf '\033]4;14;#37e6e8\007'
  printf '\033]4;15;#f1f1f0\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffffff\007'
}
```

### iTerm2 Tango Light

```bash
iterm2_tango_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d81e00\007'
  printf '\033]4;2;#5ea702\007'
  printf '\033]4;3;#cfae00\007'
  printf '\033]4;4;#427ab3\007'
  printf '\033]4;5;#89658e\007'
  printf '\033]4;6;#00a7aa\007'
  printf '\033]4;7;#c1c4be\007'
  printf '\033]4;8;#686a66\007'
  printf '\033]4;9;#f54235\007'
  printf '\033]4;10;#8cd636\007'
  printf '\033]4;11;#d7c53b\007'
  printf '\033]4;12;#84b0d8\007'
  printf '\033]4;13;#bc94b7\007'
  printf '\033]4;14;#1eccce\007'
  printf '\033]4;15;#f1f1f0\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Jackie Brown

```bash
jackie_brown() {
  printf '\033]4;0;#2c1d16\007'
  printf '\033]4;1;#ef5734\007'
  printf '\033]4;2;#2baf2b\007'
  printf '\033]4;3;#bebf00\007'
  printf '\033]4;4;#246eb2\007'
  printf '\033]4;5;#d05ec1\007'
  printf '\033]4;6;#00acee\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e50000\007'
  printf '\033]4;10;#86a93e\007'
  printf '\033]4;11;#e5e500\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00e5e5\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#ffcc2f\007'
  printf '\033]11;#2c1d16\007'
  printf '\033]12;#23ff18\007'
}
```

### Japanesque

```bash
japanesque() {
  printf '\033]4;0;#343935\007'
  printf '\033]4;1;#cf3f61\007'
  printf '\033]4;2;#7bb75b\007'
  printf '\033]4;3;#e9b32a\007'
  printf '\033]4;4;#4c9ad4\007'
  printf '\033]4;5;#a57fc4\007'
  printf '\033]4;6;#389aad\007'
  printf '\033]4;7;#fafaf6\007'
  printf '\033]4;8;#595b59\007'
  printf '\033]4;9;#d18fa6\007'
  printf '\033]4;10;#767f2c\007'
  printf '\033]4;11;#78592f\007'
  printf '\033]4;12;#135979\007'
  printf '\033]4;13;#604291\007'
  printf '\033]4;14;#76bbca\007'
  printf '\033]4;15;#b2b5ae\007'
  printf '\033]10;#f7f6ec\007'
  printf '\033]11;#1e1e1e\007'
  printf '\033]12;#edcf4f\007'
}
```

### Jellybeans

```bash
jellybeans() {
  printf '\033]4;0;#929292\007'
  printf '\033]4;1;#e27373\007'
  printf '\033]4;2;#94b979\007'
  printf '\033]4;3;#ffba7b\007'
  printf '\033]4;4;#97bedc\007'
  printf '\033]4;5;#e1c0fa\007'
  printf '\033]4;6;#00988e\007'
  printf '\033]4;7;#dedede\007'
  printf '\033]4;8;#bdbdbd\007'
  printf '\033]4;9;#ffa1a1\007'
  printf '\033]4;10;#bddeab\007'
  printf '\033]4;11;#ffdca0\007'
  printf '\033]4;12;#b1d8f6\007'
  printf '\033]4;13;#fbdaff\007'
  printf '\033]4;14;#1ab2a8\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dedede\007'
  printf '\033]11;#121212\007'
  printf '\033]12;#ffa560\007'
}
```

### JetBrains Darcula

```bash
jetbrains_darcula() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fa5355\007'
  printf '\033]4;2;#126e00\007'
  printf '\033]4;3;#c2c300\007'
  printf '\033]4;4;#4581eb\007'
  printf '\033]4;5;#fa54ff\007'
  printf '\033]4;6;#33c2c1\007'
  printf '\033]4;7;#adadad\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#fb7172\007'
  printf '\033]4;10;#67ff4f\007'
  printf '\033]4;11;#ffff00\007'
  printf '\033]4;12;#6d9df1\007'
  printf '\033]4;13;#fb82ff\007'
  printf '\033]4;14;#60d3d1\007'
  printf '\033]4;15;#eeeeee\007'
  printf '\033]10;#adadad\007'
  printf '\033]11;#202020\007'
  printf '\033]12;#ffffff\007'
}
```

### Jubi

```bash
jubi() {
  printf '\033]4;0;#3b3750\007'
  printf '\033]4;1;#cf7b98\007'
  printf '\033]4;2;#90a94b\007'
  printf '\033]4;3;#6ebfc0\007'
  printf '\033]4;4;#576ea6\007'
  printf '\033]4;5;#bc4f68\007'
  printf '\033]4;6;#75a7d2\007'
  printf '\033]4;7;#c3d3de\007'
  printf '\033]4;8;#a874ce\007'
  printf '\033]4;9;#de90ab\007'
  printf '\033]4;10;#bcdd61\007'
  printf '\033]4;11;#87e9ea\007'
  printf '\033]4;12;#8c9fcd\007'
  printf '\033]4;13;#e16c87\007'
  printf '\033]4;14;#b7c9ef\007'
  printf '\033]4;15;#d5e5f1\007'
  printf '\033]10;#c3d3de\007'
  printf '\033]11;#262b33\007'
  printf '\033]12;#c3d3de\007'
}
```

### Kanagawa Dragon

```bash
kanagawa_dragon() {
  printf '\033]4;0;#0d0c0c\007'
  printf '\033]4;1;#c4746e\007'
  printf '\033]4;2;#8a9a7b\007'
  printf '\033]4;3;#c4b28a\007'
  printf '\033]4;4;#8ba4b0\007'
  printf '\033]4;5;#a292a3\007'
  printf '\033]4;6;#8ea4a2\007'
  printf '\033]4;7;#c8c093\007'
  printf '\033]4;8;#a6a69c\007'
  printf '\033]4;9;#e46876\007'
  printf '\033]4;10;#87a987\007'
  printf '\033]4;11;#e6c384\007'
  printf '\033]4;12;#7fb4ca\007'
  printf '\033]4;13;#938aa9\007'
  printf '\033]4;14;#7aa89f\007'
  printf '\033]4;15;#c5c9c5\007'
  printf '\033]10;#c5c9c5\007'
  printf '\033]11;#181616\007'
  printf '\033]12;#c8c093\007'
}
```

### Kanagawa Lotus

```bash
kanagawa_lotus() {
  printf '\033]4;0;#1f1f28\007'
  printf '\033]4;1;#c84053\007'
  printf '\033]4;2;#6f894e\007'
  printf '\033]4;3;#77713f\007'
  printf '\033]4;4;#4d699b\007'
  printf '\033]4;5;#b35b79\007'
  printf '\033]4;6;#597b75\007'
  printf '\033]4;7;#545464\007'
  printf '\033]4;8;#8a8980\007'
  printf '\033]4;9;#d7474b\007'
  printf '\033]4;10;#6e915f\007'
  printf '\033]4;11;#836f4a\007'
  printf '\033]4;12;#6693bf\007'
  printf '\033]4;13;#624c83\007'
  printf '\033]4;14;#5e857a\007'
  printf '\033]4;15;#43436c\007'
  printf '\033]10;#545464\007'
  printf '\033]11;#f2ecbc\007'
  printf '\033]12;#43436c\007'
}
```

### Kanagawa Wave

```bash
kanagawa_wave() {
  printf '\033]4;0;#090618\007'
  printf '\033]4;1;#c34043\007'
  printf '\033]4;2;#76946a\007'
  printf '\033]4;3;#c0a36e\007'
  printf '\033]4;4;#7e9cd8\007'
  printf '\033]4;5;#957fb8\007'
  printf '\033]4;6;#6a9589\007'
  printf '\033]4;7;#c8c093\007'
  printf '\033]4;8;#727169\007'
  printf '\033]4;9;#e82424\007'
  printf '\033]4;10;#98bb6c\007'
  printf '\033]4;11;#e6c384\007'
  printf '\033]4;12;#7fb4ca\007'
  printf '\033]4;13;#938aa9\007'
  printf '\033]4;14;#7aa89f\007'
  printf '\033]4;15;#dcd7ba\007'
  printf '\033]10;#dcd7ba\007'
  printf '\033]11;#1f1f28\007'
  printf '\033]12;#dcd7ba\007'
}
```

### Kanagawabones

```bash
kanagawabones() {
  printf '\033]4;0;#1f1f28\007'
  printf '\033]4;1;#e46a78\007'
  printf '\033]4;2;#98bc6d\007'
  printf '\033]4;3;#e5c283\007'
  printf '\033]4;4;#7eb3c9\007'
  printf '\033]4;5;#957fb8\007'
  printf '\033]4;6;#7eb3c9\007'
  printf '\033]4;7;#ddd8bb\007'
  printf '\033]4;8;#49495e\007'
  printf '\033]4;9;#ec818c\007'
  printf '\033]4;10;#9ec967\007'
  printf '\033]4;11;#f1c982\007'
  printf '\033]4;12;#7bc2df\007'
  printf '\033]4;13;#a98fd2\007'
  printf '\033]4;14;#7bc2df\007'
  printf '\033]4;15;#a8a48d\007'
  printf '\033]10;#ddd8bb\007'
  printf '\033]11;#1f1f28\007'
  printf '\033]12;#e6e0c2\007'
}
```

### Kanso Ink

```bash
kanso_ink() {
  printf '\033]4;0;#14171d\007'
  printf '\033]4;1;#c4746e\007'
  printf '\033]4;2;#8a9a7b\007'
  printf '\033]4;3;#c4b28a\007'
  printf '\033]4;4;#8ba4b0\007'
  printf '\033]4;5;#a292a3\007'
  printf '\033]4;6;#8ea4a2\007'
  printf '\033]4;7;#c8c093\007'
  printf '\033]4;8;#a4a7a4\007'
  printf '\033]4;9;#e46876\007'
  printf '\033]4;10;#87a987\007'
  printf '\033]4;11;#e6c384\007'
  printf '\033]4;12;#7fb4ca\007'
  printf '\033]4;13;#938aa9\007'
  printf '\033]4;14;#7aa89f\007'
  printf '\033]4;15;#c5c9c7\007'
  printf '\033]10;#c5c9c7\007'
  printf '\033]11;#14171d\007'
  printf '\033]12;#c5c9c7\007'
}
```

### Kanso Mist

```bash
kanso_mist() {
  printf '\033]4;0;#22262d\007'
  printf '\033]4;1;#c4746e\007'
  printf '\033]4;2;#8a9a7b\007'
  printf '\033]4;3;#c4b28a\007'
  printf '\033]4;4;#8ba4b0\007'
  printf '\033]4;5;#a292a3\007'
  printf '\033]4;6;#8ea4a2\007'
  printf '\033]4;7;#a4a7a4\007'
  printf '\033]4;8;#5c6066\007'
  printf '\033]4;9;#e46876\007'
  printf '\033]4;10;#87a987\007'
  printf '\033]4;11;#e6c384\007'
  printf '\033]4;12;#7fb4ca\007'
  printf '\033]4;13;#938aa9\007'
  printf '\033]4;14;#7aa89f\007'
  printf '\033]4;15;#c5c9c7\007'
  printf '\033]10;#c5c9c7\007'
  printf '\033]11;#22262d\007'
  printf '\033]12;#c5c9c7\007'
}
```

### Kanso Pearl

```bash
kanso_pearl() {
  printf '\033]4;0;#22262d\007'
  printf '\033]4;1;#c84053\007'
  printf '\033]4;2;#6f894e\007'
  printf '\033]4;3;#77713f\007'
  printf '\033]4;4;#4d699b\007'
  printf '\033]4;5;#b35b79\007'
  printf '\033]4;6;#597b75\007'
  printf '\033]4;7;#545464\007'
  printf '\033]4;8;#6d6f6e\007'
  printf '\033]4;9;#d7474b\007'
  printf '\033]4;10;#6e915f\007'
  printf '\033]4;11;#836f4a\007'
  printf '\033]4;12;#6693bf\007'
  printf '\033]4;13;#624c83\007'
  printf '\033]4;14;#5e857a\007'
  printf '\033]4;15;#43436c\007'
  printf '\033]10;#22262d\007'
  printf '\033]11;#f2f1ef\007'
  printf '\033]12;#22262d\007'
}
```

### Kanso Zen

```bash
kanso_zen() {
  printf '\033]4;0;#0d0c0c\007'
  printf '\033]4;1;#c4746e\007'
  printf '\033]4;2;#8a9a7b\007'
  printf '\033]4;3;#c4b28a\007'
  printf '\033]4;4;#8ba4b0\007'
  printf '\033]4;5;#a292a3\007'
  printf '\033]4;6;#8ea4a2\007'
  printf '\033]4;7;#c8c093\007'
  printf '\033]4;8;#a4a7a4\007'
  printf '\033]4;9;#e46876\007'
  printf '\033]4;10;#87a987\007'
  printf '\033]4;11;#e6c384\007'
  printf '\033]4;12;#7fb4ca\007'
  printf '\033]4;13;#938aa9\007'
  printf '\033]4;14;#7aa89f\007'
  printf '\033]4;15;#c5c9c7\007'
  printf '\033]10;#c5c9c7\007'
  printf '\033]11;#090e13\007'
  printf '\033]12;#c5c9c7\007'
}
```

### Kibble

```bash
kibble() {
  printf '\033]4;0;#4d4d4d\007'
  printf '\033]4;1;#c70031\007'
  printf '\033]4;2;#29cf13\007'
  printf '\033]4;3;#d8e30e\007'
  printf '\033]4;4;#3449d1\007'
  printf '\033]4;5;#8400ff\007'
  printf '\033]4;6;#0798ab\007'
  printf '\033]4;7;#e2d1e3\007'
  printf '\033]4;8;#5a5a5a\007'
  printf '\033]4;9;#f01578\007'
  printf '\033]4;10;#6ce05c\007'
  printf '\033]4;11;#f3f79e\007'
  printf '\033]4;12;#97a4f7\007'
  printf '\033]4;13;#c495f0\007'
  printf '\033]4;14;#68f2e0\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f7f7f7\007'
  printf '\033]11;#0e100a\007'
  printf '\033]12;#9fda9c\007'
}
```

### Kitty Default

```bash
kitty_default() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0403\007'
  printf '\033]4;2;#19cb00\007'
  printf '\033]4;3;#cecb00\007'
  printf '\033]4;4;#0d73cc\007'
  printf '\033]4;5;#cb1ed1\007'
  printf '\033]4;6;#0dcdcd\007'
  printf '\033]4;7;#dddddd\007'
  printf '\033]4;8;#767676\007'
  printf '\033]4;9;#f2201f\007'
  printf '\033]4;10;#23fd00\007'
  printf '\033]4;11;#fffd00\007'
  printf '\033]4;12;#1a8fff\007'
  printf '\033]4;13;#fd28ff\007'
  printf '\033]4;14;#14ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dddddd\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#cccccc\007'
}
```

### Kitty Low Contrast

```bash
kitty_low_contrast() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0403\007'
  printf '\033]4;2;#19cb00\007'
  printf '\033]4;3;#cecb00\007'
  printf '\033]4;4;#0d73cc\007'
  printf '\033]4;5;#cb1ed1\007'
  printf '\033]4;6;#0dcdcd\007'
  printf '\033]4;7;#dddddd\007'
  printf '\033]4;8;#767676\007'
  printf '\033]4;9;#f2201f\007'
  printf '\033]4;10;#23fd00\007'
  printf '\033]4;11;#fffd00\007'
  printf '\033]4;12;#1a8fff\007'
  printf '\033]4;13;#fd28ff\007'
  printf '\033]4;14;#14ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#333333\007'
  printf '\033]12;#cccccc\007'
}
```

### Kolorit

```bash
kolorit() {
  printf '\033]4;0;#1d1a1e\007'
  printf '\033]4;1;#ff5b82\007'
  printf '\033]4;2;#47d7a1\007'
  printf '\033]4;3;#e8e562\007'
  printf '\033]4;4;#5db4ee\007'
  printf '\033]4;5;#da6cda\007'
  printf '\033]4;6;#57e9eb\007'
  printf '\033]4;7;#ededed\007'
  printf '\033]4;8;#504d51\007'
  printf '\033]4;9;#ff5b82\007'
  printf '\033]4;10;#47d7a1\007'
  printf '\033]4;11;#e8e562\007'
  printf '\033]4;12;#5db4ee\007'
  printf '\033]4;13;#da6cda\007'
  printf '\033]4;14;#57e9eb\007'
  printf '\033]4;15;#ededed\007'
  printf '\033]10;#efecec\007'
  printf '\033]11;#1d1a1e\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Konsolas

```bash
konsolas() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#aa1717\007'
  printf '\033]4;2;#18b218\007'
  printf '\033]4;3;#ebae1f\007'
  printf '\033]4;4;#2323a5\007'
  printf '\033]4;5;#ad1edc\007'
  printf '\033]4;6;#42b0c8\007'
  printf '\033]4;7;#c8c1c1\007'
  printf '\033]4;8;#7b716e\007'
  printf '\033]4;9;#ff4141\007'
  printf '\033]4;10;#5fff5f\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#4b4bff\007'
  printf '\033]4;13;#ff54ff\007'
  printf '\033]4;14;#69ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c8c1c1\007'
  printf '\033]11;#060606\007'
  printf '\033]12;#c8c1c1\007'
}
```

### Kurokula

```bash
kurokula() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#c35a52\007'
  printf '\033]4;2;#78b3a9\007'
  printf '\033]4;3;#e1b917\007'
  printf '\033]4;4;#5c91dd\007'
  printf '\033]4;5;#8b79a6\007'
  printf '\033]4;6;#867268\007'
  printf '\033]4;7;#e0cfc2\007'
  printf '\033]4;8;#515151\007'
  printf '\033]4;9;#ffc34c\007'
  printf '\033]4;10;#afffa5\007'
  printf '\033]4;11;#fff700\007'
  printf '\033]4;12;#90dbff\007'
  printf '\033]4;13;#ad93ff\007'
  printf '\033]4;14;#ffcdb6\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e0cfc2\007'
  printf '\033]11;#141515\007'
  printf '\033]12;#7a1c1c\007'
}
```

### Lab Fox

```bash
lab_fox() {
  printf '\033]4;0;#2e2e2e\007'
  printf '\033]4;1;#fc6d26\007'
  printf '\033]4;2;#3eb383\007'
  printf '\033]4;3;#fca121\007'
  printf '\033]4;4;#db3b21\007'
  printf '\033]4;5;#6b40a8\007'
  printf '\033]4;6;#6e49cb\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#535353\007'
  printf '\033]4;9;#ff6517\007'
  printf '\033]4;10;#53eaa8\007'
  printf '\033]4;11;#fca013\007'
  printf '\033]4;12;#db501f\007'
  printf '\033]4;13;#6a36b6\007'
  printf '\033]4;14;#7d53e7\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#2e2e2e\007'
  printf '\033]12;#7f7f7f\007'
}
```

### Laser

```bash
laser() {
  printf '\033]4;0;#626262\007'
  printf '\033]4;1;#ff8373\007'
  printf '\033]4;2;#b4fb73\007'
  printf '\033]4;3;#09b4bd\007'
  printf '\033]4;4;#fed300\007'
  printf '\033]4;5;#ff90fe\007'
  printf '\033]4;6;#d1d1fe\007'
  printf '\033]4;7;#f1f1f1\007'
  printf '\033]4;8;#8f8f8f\007'
  printf '\033]4;9;#ffc4be\007'
  printf '\033]4;10;#d6fcba\007'
  printf '\033]4;11;#fffed5\007'
  printf '\033]4;12;#f92883\007'
  printf '\033]4;13;#ffb2fe\007'
  printf '\033]4;14;#e6e7fe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f106e3\007'
  printf '\033]11;#030d18\007'
  printf '\033]12;#00ff9c\007'
}
```

### Later This Evening

```bash
later_this_evening() {
  printf '\033]4;0;#2b2b2b\007'
  printf '\033]4;1;#d45a60\007'
  printf '\033]4;2;#afba67\007'
  printf '\033]4;3;#e5d289\007'
  printf '\033]4;4;#a0bad6\007'
  printf '\033]4;5;#c092d6\007'
  printf '\033]4;6;#91bfb7\007'
  printf '\033]4;7;#494a4a\007'
  printf '\033]4;8;#525454\007'
  printf '\033]4;9;#d3232f\007'
  printf '\033]4;10;#aabb39\007'
  printf '\033]4;11;#e5be39\007'
  printf '\033]4;12;#6699d6\007'
  printf '\033]4;13;#ab53d6\007'
  printf '\033]4;14;#5fc0ae\007'
  printf '\033]4;15;#c1c2c2\007'
  printf '\033]10;#959595\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#4f4f4f\007'
}
```

### Lavandula

```bash
lavandula() {
  printf '\033]4;0;#230046\007'
  printf '\033]4;1;#7d1625\007'
  printf '\033]4;2;#337e6f\007'
  printf '\033]4;3;#7f6f49\007'
  printf '\033]4;4;#4f4a7f\007'
  printf '\033]4;5;#5a3f7f\007'
  printf '\033]4;6;#58777f\007'
  printf '\033]4;7;#736e7d\007'
  printf '\033]4;8;#443a53\007'
  printf '\033]4;9;#e05167\007'
  printf '\033]4;10;#52e0c4\007'
  printf '\033]4;11;#e0c386\007'
  printf '\033]4;12;#8e87e0\007'
  printf '\033]4;13;#a776e0\007'
  printf '\033]4;14;#9ad4e0\007'
  printf '\033]4;15;#8c91fa\007'
  printf '\033]10;#736e7d\007'
  printf '\033]11;#050014\007'
  printf '\033]12;#8c91fa\007'
}
```

### Light Owl

```bash
light_owl() {
  printf '\033]4;0;#403f53\007'
  printf '\033]4;1;#de3d3b\007'
  printf '\033]4;2;#08916a\007'
  printf '\033]4;3;#e0af02\007'
  printf '\033]4;4;#288ed7\007'
  printf '\033]4;5;#d6438a\007'
  printf '\033]4;6;#2aa298\007'
  printf '\033]4;7;#bdbdbd\007'
  printf '\033]4;8;#989fb1\007'
  printf '\033]4;9;#de3d3b\007'
  printf '\033]4;10;#08916a\007'
  printf '\033]4;11;#daaa01\007'
  printf '\033]4;12;#288ed7\007'
  printf '\033]4;13;#d6438a\007'
  printf '\033]4;14;#2aa298\007'
  printf '\033]4;15;#f0f0f0\007'
  printf '\033]10;#403f53\007'
  printf '\033]11;#fbfbfb\007'
  printf '\033]12;#403f53\007'
}
```

### Liquid Carbon

```bash
liquid_carbon() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff3030\007'
  printf '\033]4;2;#559a70\007'
  printf '\033]4;3;#ccac00\007'
  printf '\033]4;4;#0099cc\007'
  printf '\033]4;5;#cc69c8\007'
  printf '\033]4;6;#7ac4cc\007'
  printf '\033]4;7;#bccccc\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#ff3030\007'
  printf '\033]4;10;#559a70\007'
  printf '\033]4;11;#ccac00\007'
  printf '\033]4;12;#0099cc\007'
  printf '\033]4;13;#cc69c8\007'
  printf '\033]4;14;#7ac4cc\007'
  printf '\033]4;15;#bccccc\007'
  printf '\033]10;#afc2c2\007'
  printf '\033]11;#303030\007'
  printf '\033]12;#ffffff\007'
}
```

### Liquid Carbon Transparent

```bash
liquid_carbon_transparent() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff3030\007'
  printf '\033]4;2;#559a70\007'
  printf '\033]4;3;#ccac00\007'
  printf '\033]4;4;#0099cc\007'
  printf '\033]4;5;#cc69c8\007'
  printf '\033]4;6;#7ac4cc\007'
  printf '\033]4;7;#bccccc\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#ff3030\007'
  printf '\033]4;10;#559a70\007'
  printf '\033]4;11;#ccac00\007'
  printf '\033]4;12;#0099cc\007'
  printf '\033]4;13;#cc69c8\007'
  printf '\033]4;14;#7ac4cc\007'
  printf '\033]4;15;#bccccc\007'
  printf '\033]10;#afc2c2\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffffff\007'
}
```

### Lovelace

```bash
lovelace() {
  printf '\033]4;0;#282a36\007'
  printf '\033]4;1;#f37f97\007'
  printf '\033]4;2;#5adecd\007'
  printf '\033]4;3;#f2a272\007'
  printf '\033]4;4;#8897f4\007'
  printf '\033]4;5;#c574dd\007'
  printf '\033]4;6;#79e6f3\007'
  printf '\033]4;7;#fdfdfd\007'
  printf '\033]4;8;#4e5165\007'
  printf '\033]4;9;#ff4971\007'
  printf '\033]4;10;#18e3c8\007'
  printf '\033]4;11;#ff8037\007'
  printf '\033]4;12;#556fff\007'
  printf '\033]4;13;#b043d1\007'
  printf '\033]4;14;#3fdcee\007'
  printf '\033]4;15;#bebec1\007'
  printf '\033]10;#fdfdfd\007'
  printf '\033]11;#1d1f28\007'
  printf '\033]12;#c574dd\007'
}
```

### Man Page

```bash
man_page() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0000\007'
  printf '\033]4;2;#00a600\007'
  printf '\033]4;3;#999900\007'
  printf '\033]4;4;#0000b2\007'
  printf '\033]4;5;#b200b2\007'
  printf '\033]4;6;#00a6b2\007'
  printf '\033]4;7;#b2b2b2\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e50000\007'
  printf '\033]4;10;#00cc00\007'
  printf '\033]4;11;#bfbf00\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00cbcb\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#fef49c\007'
  printf '\033]12;#7f7f7f\007'
}
```

### Mariana

```bash
mariana() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ec5f66\007'
  printf '\033]4;2;#99c794\007'
  printf '\033]4;3;#f9ae58\007'
  printf '\033]4;4;#6699cc\007'
  printf '\033]4;5;#c695c6\007'
  printf '\033]4;6;#5fb4b4\007'
  printf '\033]4;7;#f7f7f7\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#f97b58\007'
  printf '\033]4;10;#acd1a8\007'
  printf '\033]4;11;#fac761\007'
  printf '\033]4;12;#85add6\007'
  printf '\033]4;13;#d8b6d8\007'
  printf '\033]4;14;#82c4c4\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d8dee9\007'
  printf '\033]11;#343d46\007'
  printf '\033]12;#fcbb6a\007'
}
```

### Material

```bash
material() {
  printf '\033]4;0;#212121\007'
  printf '\033]4;1;#b7141f\007'
  printf '\033]4;2;#457b24\007'
  printf '\033]4;3;#f6981e\007'
  printf '\033]4;4;#134eb2\007'
  printf '\033]4;5;#560088\007'
  printf '\033]4;6;#0e717c\007'
  printf '\033]4;7;#afafaf\007'
  printf '\033]4;8;#424242\007'
  printf '\033]4;9;#e83b3f\007'
  printf '\033]4;10;#7aba3a\007'
  printf '\033]4;11;#bfaa00\007'
  printf '\033]4;12;#54a4f3\007'
  printf '\033]4;13;#aa4dbc\007'
  printf '\033]4;14;#26bbd1\007'
  printf '\033]4;15;#d9d9d9\007'
  printf '\033]10;#232322\007'
  printf '\033]11;#eaeaea\007'
  printf '\033]12;#16afca\007'
}
```

### Material Dark

```bash
material_dark() {
  printf '\033]4;0;#212121\007'
  printf '\033]4;1;#b7141f\007'
  printf '\033]4;2;#457b24\007'
  printf '\033]4;3;#f6981e\007'
  printf '\033]4;4;#134eb2\007'
  printf '\033]4;5;#701aa2\007'
  printf '\033]4;6;#0e717c\007'
  printf '\033]4;7;#efefef\007'
  printf '\033]4;8;#4f4f4f\007'
  printf '\033]4;9;#e83b3f\007'
  printf '\033]4;10;#7aba3a\007'
  printf '\033]4;11;#ffea2e\007'
  printf '\033]4;12;#54a4f3\007'
  printf '\033]4;13;#aa4dbc\007'
  printf '\033]4;14;#26bbd1\007'
  printf '\033]4;15;#d9d9d9\007'
  printf '\033]10;#e5e5e5\007'
  printf '\033]11;#232322\007'
  printf '\033]12;#16afca\007'
}
```

### Material Darker

```bash
material_darker() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff5370\007'
  printf '\033]4;2;#c3e88d\007'
  printf '\033]4;3;#ffcb6b\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#89ddff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#545454\007'
  printf '\033]4;9;#ff5370\007'
  printf '\033]4;10;#c3e88d\007'
  printf '\033]4;11;#ffcb6b\007'
  printf '\033]4;12;#82aaff\007'
  printf '\033]4;13;#c792ea\007'
  printf '\033]4;14;#89ddff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#eeffff\007'
  printf '\033]11;#212121\007'
  printf '\033]12;#ffffff\007'
}
```

### Material Design Colors

```bash
material_design_colors() {
  printf '\033]4;0;#435b67\007'
  printf '\033]4;1;#fc3841\007'
  printf '\033]4;2;#5cf19e\007'
  printf '\033]4;3;#fed032\007'
  printf '\033]4;4;#37b6ff\007'
  printf '\033]4;5;#fc226e\007'
  printf '\033]4;6;#59ffd1\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#a1b0b8\007'
  printf '\033]4;9;#fc746d\007'
  printf '\033]4;10;#adf7be\007'
  printf '\033]4;11;#fee16c\007'
  printf '\033]4;12;#70cfff\007'
  printf '\033]4;13;#fc669b\007'
  printf '\033]4;14;#9affe6\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e7ebed\007'
  printf '\033]11;#1d262a\007'
  printf '\033]12;#eaeaea\007'
}
```

### Material Ocean

```bash
material_ocean() {
  printf '\033]4;0;#546e7a\007'
  printf '\033]4;1;#ff5370\007'
  printf '\033]4;2;#c3e88d\007'
  printf '\033]4;3;#ffcb6b\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#89ddff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#546e7a\007'
  printf '\033]4;9;#ff5370\007'
  printf '\033]4;10;#c3e88d\007'
  printf '\033]4;11;#ffcb6b\007'
  printf '\033]4;12;#82aaff\007'
  printf '\033]4;13;#c792ea\007'
  printf '\033]4;14;#89ddff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#8f93a2\007'
  printf '\033]11;#0f111a\007'
  printf '\033]12;#ffcc00\007'
}
```

### Mathias

```bash
mathias() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e52222\007'
  printf '\033]4;2;#a6e32d\007'
  printf '\033]4;3;#fc951e\007'
  printf '\033]4;4;#c48dff\007'
  printf '\033]4;5;#fa2573\007'
  printf '\033]4;6;#67d9f0\007'
  printf '\033]4;7;#f2f2f2\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Matrix

```bash
matrix() {
  printf '\033]4;0;#0f191c\007'
  printf '\033]4;1;#23755a\007'
  printf '\033]4;2;#82d967\007'
  printf '\033]4;3;#ffd700\007'
  printf '\033]4;4;#3f5242\007'
  printf '\033]4;5;#409931\007'
  printf '\033]4;6;#50b45a\007'
  printf '\033]4;7;#507350\007'
  printf '\033]4;8;#688060\007'
  printf '\033]4;9;#2fc079\007'
  printf '\033]4;10;#90d762\007'
  printf '\033]4;11;#faff00\007'
  printf '\033]4;12;#4f7e7e\007'
  printf '\033]4;13;#11ff25\007'
  printf '\033]4;14;#c1ff8a\007'
  printf '\033]4;15;#678c61\007'
  printf '\033]10;#426644\007'
  printf '\033]11;#0f191c\007'
  printf '\033]12;#384545\007'
}
```

### Matte Black

```bash
matte_black() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#d35f5f\007'
  printf '\033]4;2;#ffc107\007'
  printf '\033]4;3;#b91c1c\007'
  printf '\033]4;4;#e68e0d\007'
  printf '\033]4;5;#d35f5f\007'
  printf '\033]4;6;#bebebe\007'
  printf '\033]4;7;#bebebe\007'
  printf '\033]4;8;#8a8a8d\007'
  printf '\033]4;9;#891c1c\007'
  printf '\033]4;10;#ffc107\007'
  printf '\033]4;11;#b90a0a\007'
  printf '\033]4;12;#f59e0b\007'
  printf '\033]4;13;#b91c1c\007'
  printf '\033]4;14;#eaeaea\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bebebe\007'
  printf '\033]11;#121212\007'
  printf '\033]12;#eaeaea\007'
}
```

### Medallion

```bash
medallion() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b64c00\007'
  printf '\033]4;2;#7c8b16\007'
  printf '\033]4;3;#d3bd26\007'
  printf '\033]4;4;#616bb0\007'
  printf '\033]4;5;#8c5a90\007'
  printf '\033]4;6;#916c25\007'
  printf '\033]4;7;#cac29a\007'
  printf '\033]4;8;#5e5219\007'
  printf '\033]4;9;#ff9149\007'
  printf '\033]4;10;#b2ca3b\007'
  printf '\033]4;11;#ffe54a\007'
  printf '\033]4;12;#acb8ff\007'
  printf '\033]4;13;#ffa0ff\007'
  printf '\033]4;14;#ffbc51\007'
  printf '\033]4;15;#fed698\007'
  printf '\033]10;#cac296\007'
  printf '\033]11;#1d1908\007'
  printf '\033]12;#d3ba30\007'
}
```

### Melange Dark

```bash
melange_dark() {
  printf '\033]4;0;#34302c\007'
  printf '\033]4;1;#bd8183\007'
  printf '\033]4;2;#78997a\007'
  printf '\033]4;3;#e49b5d\007'
  printf '\033]4;4;#7f91b2\007'
  printf '\033]4;5;#b380b0\007'
  printf '\033]4;6;#7b9695\007'
  printf '\033]4;7;#c1a78e\007'
  printf '\033]4;8;#867462\007'
  printf '\033]4;9;#d47766\007'
  printf '\033]4;10;#85b695\007'
  printf '\033]4;11;#ebc06d\007'
  printf '\033]4;12;#a3a9ce\007'
  printf '\033]4;13;#cf9bc2\007'
  printf '\033]4;14;#89b3b6\007'
  printf '\033]4;15;#ece1d7\007'
  printf '\033]10;#ece1d7\007'
  printf '\033]11;#292522\007'
  printf '\033]12;#ece1d7\007'
}
```

### Melange Light

```bash
melange_light() {
  printf '\033]4;0;#e9e1db\007'
  printf '\033]4;1;#c77b8b\007'
  printf '\033]4;2;#6e9b72\007'
  printf '\033]4;3;#bc5c00\007'
  printf '\033]4;4;#7892bd\007'
  printf '\033]4;5;#be79bb\007'
  printf '\033]4;6;#739797\007'
  printf '\033]4;7;#7d6658\007'
  printf '\033]4;8;#a98a78\007'
  printf '\033]4;9;#bf0021\007'
  printf '\033]4;10;#3a684a\007'
  printf '\033]4;11;#a06d00\007'
  printf '\033]4;12;#465aa4\007'
  printf '\033]4;13;#904180\007'
  printf '\033]4;14;#3d6568\007'
  printf '\033]4;15;#54433a\007'
  printf '\033]10;#54433a\007'
  printf '\033]11;#f1f1f1\007'
  printf '\033]12;#54433a\007'
}
```

### Mellifluous

```bash
mellifluous() {
  printf '\033]4;0;#1a1a1a\007'
  printf '\033]4;1;#d29393\007'
  printf '\033]4;2;#b3b393\007'
  printf '\033]4;3;#cbaa89\007'
  printf '\033]4;4;#a8a1be\007'
  printf '\033]4;5;#b39fb0\007'
  printf '\033]4;6;#c0af8c\007'
  printf '\033]4;7;#dadada\007'
  printf '\033]4;8;#5b5b5b\007'
  printf '\033]4;9;#c95954\007'
  printf '\033]4;10;#828040\007'
  printf '\033]4;11;#a6794c\007'
  printf '\033]4;12;#5a6599\007'
  printf '\033]4;13;#9c6995\007'
  printf '\033]4;14;#74a39e\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dadada\007'
  printf '\033]11;#1a1a1a\007'
  printf '\033]12;#bfad9e\007'
}
```

### Mellow

```bash
mellow() {
  printf '\033]4;0;#27272a\007'
  printf '\033]4;1;#f5a191\007'
  printf '\033]4;2;#90b99f\007'
  printf '\033]4;3;#e6b99d\007'
  printf '\033]4;4;#aca1cf\007'
  printf '\033]4;5;#e29eca\007'
  printf '\033]4;6;#ea83a5\007'
  printf '\033]4;7;#c1c0d4\007'
  printf '\033]4;8;#424246\007'
  printf '\033]4;9;#ffae9f\007'
  printf '\033]4;10;#9dc6ac\007'
  printf '\033]4;11;#f0c5a9\007'
  printf '\033]4;12;#b9aeda\007'
  printf '\033]4;13;#ecaad6\007'
  printf '\033]4;14;#f591b2\007'
  printf '\033]4;15;#cac9dd\007'
  printf '\033]10;#c9c7cd\007'
  printf '\033]11;#161617\007'
  printf '\033]12;#cac9dd\007'
}
```

### Miasma

```bash
miasma() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#685742\007'
  printf '\033]4;2;#5f875f\007'
  printf '\033]4;3;#b36d43\007'
  printf '\033]4;4;#78824b\007'
  printf '\033]4;5;#bb7744\007'
  printf '\033]4;6;#c9a554\007'
  printf '\033]4;7;#d7c483\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#685742\007'
  printf '\033]4;10;#5f875f\007'
  printf '\033]4;11;#b36d43\007'
  printf '\033]4;12;#78824b\007'
  printf '\033]4;13;#bb7744\007'
  printf '\033]4;14;#c9a554\007'
  printf '\033]4;15;#d7c483\007'
  printf '\033]10;#c2c2b0\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Midnight In Mojave

```bash
midnight_in_mojave() {
  printf '\033]4;0;#1e1e1e\007'
  printf '\033]4;1;#ff453a\007'
  printf '\033]4;2;#32d74b\007'
  printf '\033]4;3;#ffd60a\007'
  printf '\033]4;4;#0a84ff\007'
  printf '\033]4;5;#bf5af2\007'
  printf '\033]4;6;#5ac8fa\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#515151\007'
  printf '\033]4;9;#ff453a\007'
  printf '\033]4;10;#32d74b\007'
  printf '\033]4;11;#ffd60a\007'
  printf '\033]4;12;#0a84ff\007'
  printf '\033]4;13;#bf5af2\007'
  printf '\033]4;14;#5ac8fa\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1e1e1e\007'
  printf '\033]12;#32d74b\007'
}
```

### Mirage

```bash
mirage() {
  printf '\033]4;0;#011627\007'
  printf '\033]4;1;#ff9999\007'
  printf '\033]4;2;#85cc95\007'
  printf '\033]4;3;#ffd700\007'
  printf '\033]4;4;#7fb5ff\007'
  printf '\033]4;5;#ddb3ff\007'
  printf '\033]4;6;#21c7a8\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#575656\007'
  printf '\033]4;9;#ff9999\007'
  printf '\033]4;10;#85cc95\007'
  printf '\033]4;11;#ffd700\007'
  printf '\033]4;12;#7fb5ff\007'
  printf '\033]4;13;#ddb3ff\007'
  printf '\033]4;14;#85cc95\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#a6b2c0\007'
  printf '\033]11;#1b2738\007'
  printf '\033]12;#ddb3ff\007'
}
```

### Misterioso

```bash
misterioso() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff4242\007'
  printf '\033]4;2;#74af68\007'
  printf '\033]4;3;#ffad29\007'
  printf '\033]4;4;#338f86\007'
  printf '\033]4;5;#9414e6\007'
  printf '\033]4;6;#23d7d7\007'
  printf '\033]4;7;#e1e1e0\007'
  printf '\033]4;8;#626262\007'
  printf '\033]4;9;#ff3242\007'
  printf '\033]4;10;#74cd68\007'
  printf '\033]4;11;#ffb929\007'
  printf '\033]4;12;#23d7d7\007'
  printf '\033]4;13;#ff37ff\007'
  printf '\033]4;14;#00ede1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e1e1e0\007'
  printf '\033]11;#2d3743\007'
  printf '\033]12;#666666\007'
}
```

### Modus Operandi

```bash
modus_operandi() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#a60000\007'
  printf '\033]4;2;#006800\007'
  printf '\033]4;3;#6f5500\007'
  printf '\033]4;4;#0031a9\007'
  printf '\033]4;5;#721045\007'
  printf '\033]4;6;#005e8b\007'
  printf '\033]4;7;#a6a6a6\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#972500\007'
  printf '\033]4;10;#00663f\007'
  printf '\033]4;11;#884900\007'
  printf '\033]4;12;#3548cf\007'
  printf '\033]4;13;#531ab6\007'
  printf '\033]4;14;#005f5f\007'
  printf '\033]4;15;#595959\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Modus Operandi Tinted

```bash
modus_operandi_tinted() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#a60000\007'
  printf '\033]4;2;#006800\007'
  printf '\033]4;3;#6f5500\007'
  printf '\033]4;4;#0031a9\007'
  printf '\033]4;5;#721045\007'
  printf '\033]4;6;#005e8b\007'
  printf '\033]4;7;#a6a6a6\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#972500\007'
  printf '\033]4;10;#00663f\007'
  printf '\033]4;11;#884900\007'
  printf '\033]4;12;#3548cf\007'
  printf '\033]4;13;#531ab6\007'
  printf '\033]4;14;#005f5f\007'
  printf '\033]4;15;#595959\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#fbf7f0\007'
  printf '\033]12;#d00000\007'
}
```

### Modus Vivendi

```bash
modus_vivendi() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff5f59\007'
  printf '\033]4;2;#44bc44\007'
  printf '\033]4;3;#d0bc00\007'
  printf '\033]4;4;#2fafff\007'
  printf '\033]4;5;#feacd0\007'
  printf '\033]4;6;#00d3d0\007'
  printf '\033]4;7;#a6a6a6\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#ff7f9f\007'
  printf '\033]4;10;#00c06f\007'
  printf '\033]4;11;#fec43f\007'
  printf '\033]4;12;#79a8ff\007'
  printf '\033]4;13;#b6a0ff\007'
  printf '\033]4;14;#6ae4b9\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffffff\007'
}
```

### Modus Vivendi Tinted

```bash
modus_vivendi_tinted() {
  printf '\033]4;0;#0d0e1c\007'
  printf '\033]4;1;#ff5f59\007'
  printf '\033]4;2;#44bc44\007'
  printf '\033]4;3;#d0bc00\007'
  printf '\033]4;4;#2fafff\007'
  printf '\033]4;5;#feacd0\007'
  printf '\033]4;6;#00d3d0\007'
  printf '\033]4;7;#a6a6a6\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#ff6b55\007'
  printf '\033]4;10;#00c06f\007'
  printf '\033]4;11;#fec43f\007'
  printf '\033]4;12;#79a8ff\007'
  printf '\033]4;13;#b6a0ff\007'
  printf '\033]4;14;#6ae4b9\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#0d0e1c\007'
  printf '\033]12;#ff66ff\007'
}
```

### Molokai

```bash
molokai() {
  printf '\033]4;0;#121212\007'
  printf '\033]4;1;#fa2573\007'
  printf '\033]4;2;#98e123\007'
  printf '\033]4;3;#dfd460\007'
  printf '\033]4;4;#1080d0\007'
  printf '\033]4;5;#8700ff\007'
  printf '\033]4;6;#43a8d0\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#f6669d\007'
  printf '\033]4;10;#b1e05f\007'
  printf '\033]4;11;#fff26d\007'
  printf '\033]4;12;#00afff\007'
  printf '\033]4;13;#af87ff\007'
  printf '\033]4;14;#51ceff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#121212\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Mona Lisa

```bash
mona_lisa() {
  printf '\033]4;0;#351b0e\007'
  printf '\033]4;1;#9b291c\007'
  printf '\033]4;2;#636232\007'
  printf '\033]4;3;#c36e28\007'
  printf '\033]4;4;#515c5d\007'
  printf '\033]4;5;#9b1d29\007'
  printf '\033]4;6;#588056\007'
  printf '\033]4;7;#f7d75c\007'
  printf '\033]4;8;#874228\007'
  printf '\033]4;9;#ff4331\007'
  printf '\033]4;10;#b4b264\007'
  printf '\033]4;11;#ff9566\007'
  printf '\033]4;12;#9eb2b4\007'
  printf '\033]4;13;#ff5b6a\007'
  printf '\033]4;14;#8acd8f\007'
  printf '\033]4;15;#ffe598\007'
  printf '\033]10;#f7d66a\007'
  printf '\033]11;#120b0d\007'
  printf '\033]12;#c46c32\007'
}
```

### Monokai Classic

```bash
monokai_classic() {
  printf '\033]4;0;#272822\007'
  printf '\033]4;1;#f92672\007'
  printf '\033]4;2;#a6e22e\007'
  printf '\033]4;3;#e6db74\007'
  printf '\033]4;4;#fd971f\007'
  printf '\033]4;5;#ae81ff\007'
  printf '\033]4;6;#66d9ef\007'
  printf '\033]4;7;#fdfff1\007'
  printf '\033]4;8;#6e7066\007'
  printf '\033]4;9;#f92672\007'
  printf '\033]4;10;#a6e22e\007'
  printf '\033]4;11;#e6db74\007'
  printf '\033]4;12;#fd971f\007'
  printf '\033]4;13;#ae81ff\007'
  printf '\033]4;14;#66d9ef\007'
  printf '\033]4;15;#fdfff1\007'
  printf '\033]10;#fdfff1\007'
  printf '\033]11;#272822\007'
  printf '\033]12;#c0c1b5\007'
}
```

### Monokai Pro

```bash
monokai_pro() {
  printf '\033]4;0;#2d2a2e\007'
  printf '\033]4;1;#ff6188\007'
  printf '\033]4;2;#a9dc76\007'
  printf '\033]4;3;#ffd866\007'
  printf '\033]4;4;#fc9867\007'
  printf '\033]4;5;#ab9df2\007'
  printf '\033]4;6;#78dce8\007'
  printf '\033]4;7;#fcfcfa\007'
  printf '\033]4;8;#727072\007'
  printf '\033]4;9;#ff6188\007'
  printf '\033]4;10;#a9dc76\007'
  printf '\033]4;11;#ffd866\007'
  printf '\033]4;12;#fc9867\007'
  printf '\033]4;13;#ab9df2\007'
  printf '\033]4;14;#78dce8\007'
  printf '\033]4;15;#fcfcfa\007'
  printf '\033]10;#fcfcfa\007'
  printf '\033]11;#2d2a2e\007'
  printf '\033]12;#c1c0c0\007'
}
```

### Monokai Pro Light

```bash
monokai_pro_light() {
  printf '\033]4;0;#faf4f2\007'
  printf '\033]4;1;#e14775\007'
  printf '\033]4;2;#269d69\007'
  printf '\033]4;3;#cc7a0a\007'
  printf '\033]4;4;#e16032\007'
  printf '\033]4;5;#7058be\007'
  printf '\033]4;6;#1c8ca8\007'
  printf '\033]4;7;#29242a\007'
  printf '\033]4;8;#a59fa0\007'
  printf '\033]4;9;#e14775\007'
  printf '\033]4;10;#269d69\007'
  printf '\033]4;11;#cc7a0a\007'
  printf '\033]4;12;#e16032\007'
  printf '\033]4;13;#7058be\007'
  printf '\033]4;14;#1c8ca8\007'
  printf '\033]4;15;#29242a\007'
  printf '\033]10;#29242a\007'
  printf '\033]11;#faf4f2\007'
  printf '\033]12;#706b6e\007'
}
```

### Monokai Pro Light Sun

```bash
monokai_pro_light_sun() {
  printf '\033]4;0;#f8efe7\007'
  printf '\033]4;1;#ce4770\007'
  printf '\033]4;2;#218871\007'
  printf '\033]4;3;#b16803\007'
  printf '\033]4;4;#d4572b\007'
  printf '\033]4;5;#6851a2\007'
  printf '\033]4;6;#2473b6\007'
  printf '\033]4;7;#2c232e\007'
  printf '\033]4;8;#a59c9c\007'
  printf '\033]4;9;#ce4770\007'
  printf '\033]4;10;#218871\007'
  printf '\033]4;11;#b16803\007'
  printf '\033]4;12;#d4572b\007'
  printf '\033]4;13;#6851a2\007'
  printf '\033]4;14;#2473b6\007'
  printf '\033]4;15;#2c232e\007'
  printf '\033]10;#2c232e\007'
  printf '\033]11;#f8efe7\007'
  printf '\033]12;#72696d\007'
}
```

### Monokai Pro Machine

```bash
monokai_pro_machine() {
  printf '\033]4;0;#273136\007'
  printf '\033]4;1;#ff6d7e\007'
  printf '\033]4;2;#a2e57b\007'
  printf '\033]4;3;#ffed72\007'
  printf '\033]4;4;#ffb270\007'
  printf '\033]4;5;#baa0f8\007'
  printf '\033]4;6;#7cd5f1\007'
  printf '\033]4;7;#f2fffc\007'
  printf '\033]4;8;#6b7678\007'
  printf '\033]4;9;#ff6d7e\007'
  printf '\033]4;10;#a2e57b\007'
  printf '\033]4;11;#ffed72\007'
  printf '\033]4;12;#ffb270\007'
  printf '\033]4;13;#baa0f8\007'
  printf '\033]4;14;#7cd5f1\007'
  printf '\033]4;15;#f2fffc\007'
  printf '\033]10;#f2fffc\007'
  printf '\033]11;#273136\007'
  printf '\033]12;#b8c4c3\007'
}
```

### Monokai Pro Octagon

```bash
monokai_pro_octagon() {
  printf '\033]4;0;#282a3a\007'
  printf '\033]4;1;#ff657a\007'
  printf '\033]4;2;#bad761\007'
  printf '\033]4;3;#ffd76d\007'
  printf '\033]4;4;#ff9b5e\007'
  printf '\033]4;5;#c39ac9\007'
  printf '\033]4;6;#9cd1bb\007'
  printf '\033]4;7;#eaf2f1\007'
  printf '\033]4;8;#696d77\007'
  printf '\033]4;9;#ff657a\007'
  printf '\033]4;10;#bad761\007'
  printf '\033]4;11;#ffd76d\007'
  printf '\033]4;12;#ff9b5e\007'
  printf '\033]4;13;#c39ac9\007'
  printf '\033]4;14;#9cd1bb\007'
  printf '\033]4;15;#eaf2f1\007'
  printf '\033]10;#eaf2f1\007'
  printf '\033]11;#282a3a\007'
  printf '\033]12;#b2b9bd\007'
}
```

### Monokai Pro Ristretto

```bash
monokai_pro_ristretto() {
  printf '\033]4;0;#2c2525\007'
  printf '\033]4;1;#fd6883\007'
  printf '\033]4;2;#adda78\007'
  printf '\033]4;3;#f9cc6c\007'
  printf '\033]4;4;#f38d70\007'
  printf '\033]4;5;#a8a9eb\007'
  printf '\033]4;6;#85dacc\007'
  printf '\033]4;7;#fff1f3\007'
  printf '\033]4;8;#72696a\007'
  printf '\033]4;9;#fd6883\007'
  printf '\033]4;10;#adda78\007'
  printf '\033]4;11;#f9cc6c\007'
  printf '\033]4;12;#f38d70\007'
  printf '\033]4;13;#a8a9eb\007'
  printf '\033]4;14;#85dacc\007'
  printf '\033]4;15;#fff1f3\007'
  printf '\033]10;#fff1f3\007'
  printf '\033]11;#2c2525\007'
  printf '\033]12;#c3b7b8\007'
}
```

### Monokai Pro Spectrum

```bash
monokai_pro_spectrum() {
  printf '\033]4;0;#222222\007'
  printf '\033]4;1;#fc618d\007'
  printf '\033]4;2;#7bd88f\007'
  printf '\033]4;3;#fce566\007'
  printf '\033]4;4;#fd9353\007'
  printf '\033]4;5;#948ae3\007'
  printf '\033]4;6;#5ad4e6\007'
  printf '\033]4;7;#f7f1ff\007'
  printf '\033]4;8;#69676c\007'
  printf '\033]4;9;#fc618d\007'
  printf '\033]4;10;#7bd88f\007'
  printf '\033]4;11;#fce566\007'
  printf '\033]4;12;#fd9353\007'
  printf '\033]4;13;#948ae3\007'
  printf '\033]4;14;#5ad4e6\007'
  printf '\033]4;15;#f7f1ff\007'
  printf '\033]10;#f7f1ff\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#bab6c0\007'
}
```

### Monokai Remastered

```bash
monokai_remastered() {
  printf '\033]4;0;#1a1a1a\007'
  printf '\033]4;1;#f4005f\007'
  printf '\033]4;2;#98e024\007'
  printf '\033]4;3;#fd971f\007'
  printf '\033]4;4;#9d65ff\007'
  printf '\033]4;5;#f4005f\007'
  printf '\033]4;6;#58d1eb\007'
  printf '\033]4;7;#c4c5b5\007'
  printf '\033]4;8;#625e4c\007'
  printf '\033]4;9;#f4005f\007'
  printf '\033]4;10;#98e024\007'
  printf '\033]4;11;#e0d561\007'
  printf '\033]4;12;#9d65ff\007'
  printf '\033]4;13;#f4005f\007'
  printf '\033]4;14;#58d1eb\007'
  printf '\033]4;15;#f6f6ef\007'
  printf '\033]10;#d9d9d9\007'
  printf '\033]11;#0c0c0c\007'
  printf '\033]12;#fc971f\007'
}
```

### Monokai Soda

```bash
monokai_soda() {
  printf '\033]4;0;#1a1a1a\007'
  printf '\033]4;1;#f4005f\007'
  printf '\033]4;2;#98e024\007'
  printf '\033]4;3;#fa8419\007'
  printf '\033]4;4;#9d65ff\007'
  printf '\033]4;5;#f4005f\007'
  printf '\033]4;6;#58d1eb\007'
  printf '\033]4;7;#c4c5b5\007'
  printf '\033]4;8;#625e4c\007'
  printf '\033]4;9;#f4005f\007'
  printf '\033]4;10;#98e024\007'
  printf '\033]4;11;#e0d561\007'
  printf '\033]4;12;#9d65ff\007'
  printf '\033]4;13;#f4005f\007'
  printf '\033]4;14;#58d1eb\007'
  printf '\033]4;15;#f6f6ef\007'
  printf '\033]10;#c4c5b5\007'
  printf '\033]11;#1a1a1a\007'
  printf '\033]12;#f6f7ec\007'
}
```

### Monokai Vivid

```bash
monokai_vivid() {
  printf '\033]4;0;#121212\007'
  printf '\033]4;1;#fa2934\007'
  printf '\033]4;2;#98e123\007'
  printf '\033]4;3;#fff30a\007'
  printf '\033]4;4;#0443ff\007'
  printf '\033]4;5;#f800f8\007'
  printf '\033]4;6;#01b6ed\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#838383\007'
  printf '\033]4;9;#f6669d\007'
  printf '\033]4;10;#b1e05f\007'
  printf '\033]4;11;#fff26d\007'
  printf '\033]4;12;#0443ff\007'
  printf '\033]4;13;#f200f6\007'
  printf '\033]4;14;#51ceff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f9f9f9\007'
  printf '\033]11;#121212\007'
  printf '\033]12;#fb0007\007'
}
```

### Moonfly

```bash
moonfly() {
  printf '\033]4;0;#323437\007'
  printf '\033]4;1;#ff5454\007'
  printf '\033]4;2;#8cc85f\007'
  printf '\033]4;3;#e3c78a\007'
  printf '\033]4;4;#80a0ff\007'
  printf '\033]4;5;#cf87e8\007'
  printf '\033]4;6;#79dac8\007'
  printf '\033]4;7;#c6c6c6\007'
  printf '\033]4;8;#949494\007'
  printf '\033]4;9;#ff5189\007'
  printf '\033]4;10;#36c692\007'
  printf '\033]4;11;#c6c684\007'
  printf '\033]4;12;#74b2ff\007'
  printf '\033]4;13;#ae81ff\007'
  printf '\033]4;14;#85dc85\007'
  printf '\033]4;15;#e4e4e4\007'
  printf '\033]10;#bdbdbd\007'
  printf '\033]11;#080808\007'
  printf '\033]12;#9e9e9e\007'
}
```

### N0Tch2K

```bash
n0tch2k() {
  printf '\033]4;0;#383838\007'
  printf '\033]4;1;#a95551\007'
  printf '\033]4;2;#666666\007'
  printf '\033]4;3;#a98051\007'
  printf '\033]4;4;#657d3e\007'
  printf '\033]4;5;#767676\007'
  printf '\033]4;6;#c9c9c9\007'
  printf '\033]4;7;#d0b8a3\007'
  printf '\033]4;8;#545454\007'
  printf '\033]4;9;#a97775\007'
  printf '\033]4;10;#8c8c8c\007'
  printf '\033]4;11;#a99175\007'
  printf '\033]4;12;#98bd5e\007'
  printf '\033]4;13;#a3a3a3\007'
  printf '\033]4;14;#dcdcdc\007'
  printf '\033]4;15;#d8c8bb\007'
  printf '\033]10;#a0a0a0\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#aa9175\007'
}
```

### Neobones Dark

```bash
neobones_dark() {
  printf '\033]4;0;#0f191f\007'
  printf '\033]4;1;#de6e7c\007'
  printf '\033]4;2;#90ff6b\007'
  printf '\033]4;3;#b77e64\007'
  printf '\033]4;4;#8190d4\007'
  printf '\033]4;5;#b279a7\007'
  printf '\033]4;6;#66a5ad\007'
  printf '\033]4;7;#c6d5cf\007'
  printf '\033]4;8;#334652\007'
  printf '\033]4;9;#e8838f\007'
  printf '\033]4;10;#a0ff85\007'
  printf '\033]4;11;#d68c67\007'
  printf '\033]4;12;#92a0e2\007'
  printf '\033]4;13;#cf86c1\007'
  printf '\033]4;14;#65b8c1\007'
  printf '\033]4;15;#98a39e\007'
  printf '\033]10;#c6d5cf\007'
  printf '\033]11;#0f191f\007'
  printf '\033]12;#ceddd7\007'
}
```

### Neobones Light

```bash
neobones_light() {
  printf '\033]4;0;#e5ede6\007'
  printf '\033]4;1;#a8334c\007'
  printf '\033]4;2;#567a30\007'
  printf '\033]4;3;#944927\007'
  printf '\033]4;4;#286486\007'
  printf '\033]4;5;#88507d\007'
  printf '\033]4;6;#3b8992\007'
  printf '\033]4;7;#202e18\007'
  printf '\033]4;8;#99ac9c\007'
  printf '\033]4;9;#94253e\007'
  printf '\033]4;10;#3f5a22\007'
  printf '\033]4;11;#803d1c\007'
  printf '\033]4;12;#1d5573\007'
  printf '\033]4;13;#7b3b70\007'
  printf '\033]4;14;#2b747c\007'
  printf '\033]4;15;#415934\007'
  printf '\033]10;#202e18\007'
  printf '\033]11;#e5ede6\007'
  printf '\033]12;#202e18\007'
}
```

### Neon

```bash
neon() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff3045\007'
  printf '\033]4;2;#5ffa74\007'
  printf '\033]4;3;#fffc7e\007'
  printf '\033]4;4;#0f15d8\007'
  printf '\033]4;5;#f924e7\007'
  printf '\033]4;6;#00fffc\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff5a5a\007'
  printf '\033]4;10;#75ff88\007'
  printf '\033]4;11;#fffd96\007'
  printf '\033]4;12;#3c40cb\007'
  printf '\033]4;13;#f15be5\007'
  printf '\033]4;14;#88fffe\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#00fffc\007'
  printf '\033]11;#14161a\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Neopolitan

```bash
neopolitan() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#9a1a1a\007'
  printf '\033]4;2;#61ce3c\007'
  printf '\033]4;3;#fbde2d\007'
  printf '\033]4;4;#324883\007'
  printf '\033]4;5;#ff0080\007'
  printf '\033]4;6;#8da6ce\007'
  printf '\033]4;7;#f8f8f8\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#9a1a1a\007'
  printf '\033]4;10;#61ce3c\007'
  printf '\033]4;11;#fbde2d\007'
  printf '\033]4;12;#324883\007'
  printf '\033]4;13;#ff0080\007'
  printf '\033]4;14;#8da6ce\007'
  printf '\033]4;15;#f8f8f8\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#271f19\007'
  printf '\033]12;#ffffff\007'
}
```

### Neutron

```bash
neutron() {
  printf '\033]4;0;#23252b\007'
  printf '\033]4;1;#b54036\007'
  printf '\033]4;2;#5ab977\007'
  printf '\033]4;3;#deb566\007'
  printf '\033]4;4;#6a7c93\007'
  printf '\033]4;5;#a4799d\007'
  printf '\033]4;6;#3f94a8\007'
  printf '\033]4;7;#e6e8ef\007'
  printf '\033]4;8;#494b51\007'
  printf '\033]4;9;#b54036\007'
  printf '\033]4;10;#5ab977\007'
  printf '\033]4;11;#deb566\007'
  printf '\033]4;12;#6a7c93\007'
  printf '\033]4;13;#a4799d\007'
  printf '\033]4;14;#3f94a8\007'
  printf '\033]4;15;#ebedf2\007'
  printf '\033]10;#e6e8ef\007'
  printf '\033]11;#1c1e22\007'
  printf '\033]12;#f6f7ec\007'
}
```

### Night Lion V1

```bash
night_lion_v1() {
  printf '\033]4;0;#4c4c4c\007'
  printf '\033]4;1;#bb0000\007'
  printf '\033]4;2;#5fde8f\007'
  printf '\033]4;3;#f3f167\007'
  printf '\033]4;4;#276bd8\007'
  printf '\033]4;5;#bb00bb\007'
  printf '\033]4;6;#00dadf\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Night Lion V2

```bash
night_lion_v2() {
  printf '\033]4;0;#4c4c4c\007'
  printf '\033]4;1;#bb0000\007'
  printf '\033]4;2;#04f623\007'
  printf '\033]4;3;#f3f167\007'
  printf '\033]4;4;#64d0f0\007'
  printf '\033]4;5;#ce6fdb\007'
  printf '\033]4;6;#00dadf\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#7df71d\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#62cbe8\007'
  printf '\033]4;13;#ff9bf5\007'
  printf '\033]4;14;#00ccd8\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#171717\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Night Owl

```bash
night_owl() {
  printf '\033]4;0;#011627\007'
  printf '\033]4;1;#ef5350\007'
  printf '\033]4;2;#22da6e\007'
  printf '\033]4;3;#addb67\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#21c7a8\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#575656\007'
  printf '\033]4;9;#ef5350\007'
  printf '\033]4;10;#22da6e\007'
  printf '\033]4;11;#ffeb95\007'
  printf '\033]4;12;#82aaff\007'
  printf '\033]4;13;#c792ea\007'
  printf '\033]4;14;#7fdbca\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d6deeb\007'
  printf '\033]11;#011627\007'
  printf '\033]12;#7e57c2\007'
}
```

### Night Owlish Light

```bash
night_owlish_light() {
  printf '\033]4;0;#011627\007'
  printf '\033]4;1;#d3423e\007'
  printf '\033]4;2;#2aa298\007'
  printf '\033]4;3;#daaa01\007'
  printf '\033]4;4;#4876d6\007'
  printf '\033]4;5;#403f53\007'
  printf '\033]4;6;#08916a\007'
  printf '\033]4;7;#7a8181\007'
  printf '\033]4;8;#7a8181\007'
  printf '\033]4;9;#f76e6e\007'
  printf '\033]4;10;#49d0c5\007'
  printf '\033]4;11;#dac26b\007'
  printf '\033]4;12;#5ca7e4\007'
  printf '\033]4;13;#697098\007'
  printf '\033]4;14;#00c990\007'
  printf '\033]4;15;#989fb1\007'
  printf '\033]10;#403f53\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#403f53\007'
}
```

### Nightfox

```bash
nightfox() {
  printf '\033]4;0;#393b44\007'
  printf '\033]4;1;#c94f6d\007'
  printf '\033]4;2;#81b29a\007'
  printf '\033]4;3;#dbc074\007'
  printf '\033]4;4;#719cd6\007'
  printf '\033]4;5;#9d79d6\007'
  printf '\033]4;6;#63cdcf\007'
  printf '\033]4;7;#dfdfe0\007'
  printf '\033]4;8;#575860\007'
  printf '\033]4;9;#d16983\007'
  printf '\033]4;10;#8ebaa4\007'
  printf '\033]4;11;#e0c989\007'
  printf '\033]4;12;#86abdc\007'
  printf '\033]4;13;#baa1e2\007'
  printf '\033]4;14;#7ad5d6\007'
  printf '\033]4;15;#e4e4e5\007'
  printf '\033]10;#cdcecf\007'
  printf '\033]11;#192330\007'
  printf '\033]12;#cdcecf\007'
}
```

### Niji

```bash
niji() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#d23e08\007'
  printf '\033]4;2;#54ca74\007'
  printf '\033]4;3;#fff700\007'
  printf '\033]4;4;#2ab9ff\007'
  printf '\033]4;5;#ff50da\007'
  printf '\033]4;6;#1ef9f5\007'
  printf '\033]4;7;#ddd0c4\007'
  printf '\033]4;8;#515151\007'
  printf '\033]4;9;#ffb7b7\007'
  printf '\033]4;10;#c1ffae\007'
  printf '\033]4;11;#fcffb8\007'
  printf '\033]4;12;#8efff3\007'
  printf '\033]4;13;#ffa2ed\007'
  printf '\033]4;14;#bcffc7\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#141515\007'
  printf '\033]12;#ffc663\007'
}
```

### No Clown Fiesta

```bash
no_clown_fiesta() {
  printf '\033]4;0;#151515\007'
  printf '\033]4;1;#b46958\007'
  printf '\033]4;2;#90a959\007'
  printf '\033]4;3;#f4bf75\007'
  printf '\033]4;4;#bad7ff\007'
  printf '\033]4;5;#aa759f\007'
  printf '\033]4;6;#88afa2\007'
  printf '\033]4;7;#e1e1e1\007'
  printf '\033]4;8;#727272\007'
  printf '\033]4;9;#7e97ab\007'
  printf '\033]4;10;#90a959\007'
  printf '\033]4;11;#f4bf75\007'
  printf '\033]4;12;#bad7ff\007'
  printf '\033]4;13;#aa759f\007'
  printf '\033]4;14;#88afa2\007'
  printf '\033]4;15;#afafaf\007'
  printf '\033]10;#e0e1e4\007'
  printf '\033]11;#101010\007'
  printf '\033]12;#e0e1e4\007'
}
```

### No Clown Fiesta Light

```bash
no_clown_fiesta_light() {
  printf '\033]4;0;#d6d6d6\007'
  printf '\033]4;1;#874e42\007'
  printf '\033]4;2;#677940\007'
  printf '\033]4;3;#b89058\007'
  printf '\033]4;4;#8ba1bf\007'
  printf '\033]4;5;#aa759f\007'
  printf '\033]4;6;#3e5f66\007'
  printf '\033]4;7;#151515\007'
  printf '\033]4;8;#2b2b2b\007'
  printf '\033]4;9;#637786\007'
  printf '\033]4;10;#677940\007'
  printf '\033]4;11;#b89058\007'
  printf '\033]4;12;#93a2ab\007'
  printf '\033]4;13;#aa759f\007'
  printf '\033]4;14;#99ab93\007'
  printf '\033]4;15;#373737\007'
  printf '\033]10;#151515\007'
  printf '\033]11;#e1e1e1\007'
  printf '\033]12;#151515\007'
}
```

### Nocturnal Winter

```bash
nocturnal_winter() {
  printf '\033]4;0;#4d4d4d\007'
  printf '\033]4;1;#f12d52\007'
  printf '\033]4;2;#09cd7e\007'
  printf '\033]4;3;#f5f17a\007'
  printf '\033]4;4;#3182e0\007'
  printf '\033]4;5;#ff2b6d\007'
  printf '\033]4;6;#09c87a\007'
  printf '\033]4;7;#fcfcfc\007'
  printf '\033]4;8;#808080\007'
  printf '\033]4;9;#f16d86\007'
  printf '\033]4;10;#0ae78d\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6096ff\007'
  printf '\033]4;13;#ff78a2\007'
  printf '\033]4;14;#0ae78d\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e6e5e5\007'
  printf '\033]11;#0d0d17\007'
  printf '\033]12;#e6e5e5\007'
}
```

### Nord

```bash
nord() {
  printf '\033]4;0;#3b4252\007'
  printf '\033]4;1;#bf616a\007'
  printf '\033]4;2;#a3be8c\007'
  printf '\033]4;3;#ebcb8b\007'
  printf '\033]4;4;#81a1c1\007'
  printf '\033]4;5;#b48ead\007'
  printf '\033]4;6;#88c0d0\007'
  printf '\033]4;7;#e5e9f0\007'
  printf '\033]4;8;#596377\007'
  printf '\033]4;9;#bf616a\007'
  printf '\033]4;10;#a3be8c\007'
  printf '\033]4;11;#ebcb8b\007'
  printf '\033]4;12;#81a1c1\007'
  printf '\033]4;13;#b48ead\007'
  printf '\033]4;14;#8fbcbb\007'
  printf '\033]4;15;#eceff4\007'
  printf '\033]10;#d8dee9\007'
  printf '\033]11;#2e3440\007'
  printf '\033]12;#eceff4\007'
}
```

### Nord Light

```bash
nord_light() {
  printf '\033]4;0;#3b4252\007'
  printf '\033]4;1;#bf616a\007'
  printf '\033]4;2;#96b17f\007'
  printf '\033]4;3;#c5a565\007'
  printf '\033]4;4;#81a1c1\007'
  printf '\033]4;5;#b48ead\007'
  printf '\033]4;6;#7bb3c3\007'
  printf '\033]4;7;#a5abb6\007'
  printf '\033]4;8;#4c566a\007'
  printf '\033]4;9;#bf616a\007'
  printf '\033]4;10;#96b17f\007'
  printf '\033]4;11;#c5a565\007'
  printf '\033]4;12;#81a1c1\007'
  printf '\033]4;13;#b48ead\007'
  printf '\033]4;14;#82afae\007'
  printf '\033]4;15;#eceff4\007'
  printf '\033]10;#414858\007'
  printf '\033]11;#e5e9f0\007'
  printf '\033]12;#7bb3c3\007'
}
```

### Nord Wave

```bash
nord_wave() {
  printf '\033]4;0;#3b4252\007'
  printf '\033]4;1;#bf616a\007'
  printf '\033]4;2;#a3be8c\007'
  printf '\033]4;3;#ebcb8b\007'
  printf '\033]4;4;#81a1c1\007'
  printf '\033]4;5;#b48ead\007'
  printf '\033]4;6;#88c0d0\007'
  printf '\033]4;7;#e5e9f0\007'
  printf '\033]4;8;#4c566a\007'
  printf '\033]4;9;#bf616a\007'
  printf '\033]4;10;#a3be8c\007'
  printf '\033]4;11;#ebcb8b\007'
  printf '\033]4;12;#81a1c1\007'
  printf '\033]4;13;#b48ead\007'
  printf '\033]4;14;#8fbcbb\007'
  printf '\033]4;15;#eceff4\007'
  printf '\033]10;#d8dee9\007'
  printf '\033]11;#212121\007'
  printf '\033]12;#ebcb8b\007'
}
```

### Nordfox

```bash
nordfox() {
  printf '\033]4;0;#3b4252\007'
  printf '\033]4;1;#bf616a\007'
  printf '\033]4;2;#a3be8c\007'
  printf '\033]4;3;#ebcb8b\007'
  printf '\033]4;4;#81a1c1\007'
  printf '\033]4;5;#b48ead\007'
  printf '\033]4;6;#88c0d0\007'
  printf '\033]4;7;#e5e9f0\007'
  printf '\033]4;8;#53648d\007'
  printf '\033]4;9;#d06f79\007'
  printf '\033]4;10;#b1d196\007'
  printf '\033]4;11;#f0d399\007'
  printf '\033]4;12;#8cafd2\007'
  printf '\033]4;13;#c895bf\007'
  printf '\033]4;14;#93ccdc\007'
  printf '\033]4;15;#e7ecf4\007'
  printf '\033]10;#cdcecf\007'
  printf '\033]11;#2e3440\007'
  printf '\033]12;#cdcecf\007'
}
```

### Novel

```bash
novel() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc0000\007'
  printf '\033]4;2;#009600\007'
  printf '\033]4;3;#d06b00\007'
  printf '\033]4;4;#0000cc\007'
  printf '\033]4;5;#cc00cc\007'
  printf '\033]4;6;#0087cc\007'
  printf '\033]4;7;#a6a6a6\007'
  printf '\033]4;8;#808080\007'
  printf '\033]4;9;#cc0000\007'
  printf '\033]4;10;#009600\007'
  printf '\033]4;11;#d06b00\007'
  printf '\033]4;12;#0000cc\007'
  printf '\033]4;13;#cc00cc\007'
  printf '\033]4;14;#0087cc\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#3b2322\007'
  printf '\033]11;#dfdbc3\007'
  printf '\033]12;#73635a\007'
}
```

### novmbr

```bash
novmbr() {
  printf '\033]4;0;#282a2e\007'
  printf '\033]4;1;#9f6434\007'
  printf '\033]4;2;#9dac5f\007'
  printf '\033]4;3;#cca75f\007'
  printf '\033]4;4;#2f7d7c\007'
  printf '\033]4;5;#b5896e\007'
  printf '\033]4;6;#52877f\007'
  printf '\033]4;7;#c7b8ac\007'
  printf '\033]4;8;#5d4e47\007'
  printf '\033]4;9;#9f6434\007'
  printf '\033]4;10;#9dac5f\007'
  printf '\033]4;11;#cca75f\007'
  printf '\033]4;12;#2f7d7c\007'
  printf '\033]4;13;#b5896e\007'
  printf '\033]4;14;#52877f\007'
  printf '\033]4;15;#c7b8ac\007'
  printf '\033]10;#c7b8ac\007'
  printf '\033]11;#241d1a\007'
  printf '\033]12;#c7b8ac\007'
}
```

### Nvim Dark

```bash
nvim_dark() {
  printf '\033]4;0;#07080d\007'
  printf '\033]4;1;#ffc0b9\007'
  printf '\033]4;2;#b3f6c0\007'
  printf '\033]4;3;#fce094\007'
  printf '\033]4;4;#a6dbff\007'
  printf '\033]4;5;#ffcaff\007'
  printf '\033]4;6;#8cf8f7\007'
  printf '\033]4;7;#eef1f8\007'
  printf '\033]4;8;#4f5258\007'
  printf '\033]4;9;#ffc0b9\007'
  printf '\033]4;10;#b3f6c0\007'
  printf '\033]4;11;#fce094\007'
  printf '\033]4;12;#a6dbff\007'
  printf '\033]4;13;#ffcaff\007'
  printf '\033]4;14;#8cf8f7\007'
  printf '\033]4;15;#eef1f8\007'
  printf '\033]10;#e0e2ea\007'
  printf '\033]11;#14161b\007'
  printf '\033]12;#9b9ea4\007'
}
```

### Nvim Light

```bash
nvim_light() {
  printf '\033]4;0;#07080d\007'
  printf '\033]4;1;#590008\007'
  printf '\033]4;2;#005523\007'
  printf '\033]4;3;#6b5300\007'
  printf '\033]4;4;#004c73\007'
  printf '\033]4;5;#470045\007'
  printf '\033]4;6;#007373\007'
  printf '\033]4;7;#a1a4ab\007'
  printf '\033]4;8;#4f5258\007'
  printf '\033]4;9;#590008\007'
  printf '\033]4;10;#005523\007'
  printf '\033]4;11;#6b5300\007'
  printf '\033]4;12;#004c73\007'
  printf '\033]4;13;#470045\007'
  printf '\033]4;14;#007373\007'
  printf '\033]4;15;#eef1f8\007'
  printf '\033]10;#14161b\007'
  printf '\033]11;#e0e2ea\007'
  printf '\033]12;#9b9ea4\007'
}
```

### Obsidian

```bash
obsidian() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b30d0e\007'
  printf '\033]4;2;#00bb00\007'
  printf '\033]4;3;#fecd22\007'
  printf '\033]4;4;#3a9bdb\007'
  printf '\033]4;5;#bb00bb\007'
  printf '\033]4;6;#00bbbb\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff0003\007'
  printf '\033]4;10;#93c863\007'
  printf '\033]4;11;#fef874\007'
  printf '\033]4;12;#a1d7ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cdcdcd\007'
  printf '\033]11;#283033\007'
  printf '\033]12;#c0cad0\007'
}
```

### Ocean

```bash
ocean() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e64c4c\007'
  printf '\033]4;2;#00a600\007'
  printf '\033]4;3;#999900\007'
  printf '\033]4;4;#0000b2\007'
  printf '\033]4;5;#d826d8\007'
  printf '\033]4;6;#00a6b2\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#808080\007'
  printf '\033]4;9;#ff1a1a\007'
  printf '\033]4;10;#00d900\007'
  printf '\033]4;11;#e5e500\007'
  printf '\033]4;12;#7373ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00e5e5\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#224fbc\007'
  printf '\033]12;#7f7f7f\007'
}
```

### Oceanic Material

```bash
oceanic_material() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ee2b2a\007'
  printf '\033]4;2;#40a33f\007'
  printf '\033]4;3;#ffea2e\007'
  printf '\033]4;4;#1e80f0\007'
  printf '\033]4;5;#8800a0\007'
  printf '\033]4;6;#16afca\007'
  printf '\033]4;7;#a4a4a4\007'
  printf '\033]4;8;#777777\007'
  printf '\033]4;9;#dc5c60\007'
  printf '\033]4;10;#70be71\007'
  printf '\033]4;11;#fff163\007'
  printf '\033]4;12;#54a4f3\007'
  printf '\033]4;13;#aa4dbc\007'
  printf '\033]4;14;#42c7da\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c2c8d7\007'
  printf '\033]11;#1c262b\007'
  printf '\033]12;#b3b8c3\007'
}
```

### Oceanic Next

```bash
oceanic_next() {
  printf '\033]4;0;#162c35\007'
  printf '\033]4;1;#ec5f67\007'
  printf '\033]4;2;#99c794\007'
  printf '\033]4;3;#fac863\007'
  printf '\033]4;4;#6699cc\007'
  printf '\033]4;5;#c594c5\007'
  printf '\033]4;6;#5fb3b3\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#65737e\007'
  printf '\033]4;9;#ec5f67\007'
  printf '\033]4;10;#99c794\007'
  printf '\033]4;11;#fac863\007'
  printf '\033]4;12;#6699cc\007'
  printf '\033]4;13;#c594c5\007'
  printf '\033]4;14;#5fb3b3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c0c5ce\007'
  printf '\033]11;#162c35\007'
  printf '\033]12;#c0c5ce\007'
}
```

### Ollie

```bash
ollie() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ac2e31\007'
  printf '\033]4;2;#31ac61\007'
  printf '\033]4;3;#ac4300\007'
  printf '\033]4;4;#2d57ac\007'
  printf '\033]4;5;#b08528\007'
  printf '\033]4;6;#1fa6ac\007'
  printf '\033]4;7;#8a8eac\007'
  printf '\033]4;8;#684432\007'
  printf '\033]4;9;#ff3d48\007'
  printf '\033]4;10;#3bff99\007'
  printf '\033]4;11;#ff5e1e\007'
  printf '\033]4;12;#4488ff\007'
  printf '\033]4;13;#ffc21d\007'
  printf '\033]4;14;#1ffaff\007'
  printf '\033]4;15;#5b6ea7\007'
  printf '\033]10;#8a8dae\007'
  printf '\033]11;#222125\007'
  printf '\033]12;#5b6ea7\007'
}
```

### One Dark Two

```bash
one_dark_two() {
  printf '\033]4;0;#1d1f23\007'
  printf '\033]4;1;#e27881\007'
  printf '\033]4;2;#98c379\007'
  printf '\033]4;3;#eac786\007'
  printf '\033]4;4;#71b9f4\007'
  printf '\033]4;5;#c88bda\007'
  printf '\033]4;6;#62bac6\007'
  printf '\033]4;7;#c9ccd3\007'
  printf '\033]4;8;#4a505a\007'
  printf '\033]4;9;#e68991\007'
  printf '\033]4;10;#a8cc8e\007'
  printf '\033]4;11;#edcf97\007'
  printf '\033]4;12;#8dc7f6\007'
  printf '\033]4;13;#d3a2e2\007'
  printf '\033]4;14;#78c4ce\007'
  printf '\033]4;15;#e6e6e6\007'
  printf '\033]10;#e6e6e6\007'
  printf '\033]11;#21252b\007'
  printf '\033]12;#e6e6e6\007'
}
```

### One Double Dark

```bash
one_double_dark() {
  printf '\033]4;0;#3d4452\007'
  printf '\033]4;1;#f16372\007'
  printf '\033]4;2;#8cc570\007'
  printf '\033]4;3;#ecbe70\007'
  printf '\033]4;4;#3fb1f5\007'
  printf '\033]4;5;#d373e3\007'
  printf '\033]4;6;#17b9c4\007'
  printf '\033]4;7;#dbdfe5\007'
  printf '\033]4;8;#525d6f\007'
  printf '\033]4;9;#ff777b\007'
  printf '\033]4;10;#82d882\007'
  printf '\033]4;11;#f5c065\007'
  printf '\033]4;12;#6dcaff\007'
  printf '\033]4;13;#ff7bf4\007'
  printf '\033]4;14;#00e5fb\007'
  printf '\033]4;15;#f7f9fc\007'
  printf '\033]10;#dbdfe5\007'
  printf '\033]11;#282c34\007'
  printf '\033]12;#f5e0dc\007'
}
```

### One Double Light

```bash
one_double_light() {
  printf '\033]4;0;#454b58\007'
  printf '\033]4;1;#f74840\007'
  printf '\033]4;2;#25a343\007'
  printf '\033]4;3;#cc8100\007'
  printf '\033]4;4;#0087c1\007'
  printf '\033]4;5;#b50da9\007'
  printf '\033]4;6;#009ab7\007'
  printf '\033]4;7;#c5b2b3\007'
  printf '\033]4;8;#0e131f\007'
  printf '\033]4;9;#ff3711\007'
  printf '\033]4;10;#00b90e\007'
  printf '\033]4;11;#ec9900\007'
  printf '\033]4;12;#1065de\007'
  printf '\033]4;13;#e500d8\007'
  printf '\033]4;14;#00b4dd\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#383a43\007'
  printf '\033]11;#fafafa\007'
  printf '\033]12;#1a1919\007'
}
```

### One Half Dark

```bash
one_half_dark() {
  printf '\033]4;0;#282c34\007'
  printf '\033]4;1;#e06c75\007'
  printf '\033]4;2;#98c379\007'
  printf '\033]4;3;#e5c07b\007'
  printf '\033]4;4;#61afef\007'
  printf '\033]4;5;#c678dd\007'
  printf '\033]4;6;#56b6c2\007'
  printf '\033]4;7;#dcdfe4\007'
  printf '\033]4;8;#5d677a\007'
  printf '\033]4;9;#e06c75\007'
  printf '\033]4;10;#98c379\007'
  printf '\033]4;11;#e5c07b\007'
  printf '\033]4;12;#61afef\007'
  printf '\033]4;13;#c678dd\007'
  printf '\033]4;14;#56b6c2\007'
  printf '\033]4;15;#dcdfe4\007'
  printf '\033]10;#dcdfe4\007'
  printf '\033]11;#282c34\007'
  printf '\033]12;#a3b3cc\007'
}
```

### One Half Light

```bash
one_half_light() {
  printf '\033]4;0;#383a42\007'
  printf '\033]4;1;#e45649\007'
  printf '\033]4;2;#50a14f\007'
  printf '\033]4;3;#c18401\007'
  printf '\033]4;4;#0184bc\007'
  printf '\033]4;5;#a626a4\007'
  printf '\033]4;6;#0997b3\007'
  printf '\033]4;7;#bababa\007'
  printf '\033]4;8;#4f525e\007'
  printf '\033]4;9;#e06c75\007'
  printf '\033]4;10;#98c379\007'
  printf '\033]4;11;#d8b36e\007'
  printf '\033]4;12;#61afef\007'
  printf '\033]4;13;#c678dd\007'
  printf '\033]4;14;#56b6c2\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#383a42\007'
  printf '\033]11;#fafafa\007'
  printf '\033]12;#a5b4e5\007'
}
```

### Onenord

```bash
onenord() {
  printf '\033]4;0;#3b4252\007'
  printf '\033]4;1;#e06c75\007'
  printf '\033]4;2;#9ec183\007'
  printf '\033]4;3;#ebcb8b\007'
  printf '\033]4;4;#81a1c1\007'
  printf '\033]4;5;#b988b0\007'
  printf '\033]4;6;#88c0d0\007'
  printf '\033]4;7;#e5e9f0\007'
  printf '\033]4;8;#596377\007'
  printf '\033]4;9;#e06c75\007'
  printf '\033]4;10;#9ec183\007'
  printf '\033]4;11;#ebcb8b\007'
  printf '\033]4;12;#81a1c1\007'
  printf '\033]4;13;#b988b0\007'
  printf '\033]4;14;#8fbcbb\007'
  printf '\033]4;15;#eceff4\007'
  printf '\033]10;#e5e9f0\007'
  printf '\033]11;#2e3440\007'
  printf '\033]12;#81a1c1\007'
}
```

### Onenord Light

```bash
onenord_light() {
  printf '\033]4;0;#2e3440\007'
  printf '\033]4;1;#cb4f53\007'
  printf '\033]4;2;#48a53d\007'
  printf '\033]4;3;#ee5e25\007'
  printf '\033]4;4;#3879c5\007'
  printf '\033]4;5;#9f4aca\007'
  printf '\033]4;6;#3ea1ad\007'
  printf '\033]4;7;#b2b6bd\007'
  printf '\033]4;8;#646a76\007'
  printf '\033]4;9;#d16366\007'
  printf '\033]4;10;#5f9e9d\007'
  printf '\033]4;11;#ba793e\007'
  printf '\033]4;12;#1b40a6\007'
  printf '\033]4;13;#9665af\007'
  printf '\033]4;14;#8fbcbb\007'
  printf '\033]4;15;#eceff4\007'
  printf '\033]10;#2e3440\007'
  printf '\033]11;#f7f8fa\007'
  printf '\033]12;#3879c5\007'
}
```

### Operator Mono Dark

```bash
operator_mono_dark() {
  printf '\033]4;0;#5a5a5a\007'
  printf '\033]4;1;#ca372d\007'
  printf '\033]4;2;#4d7b3a\007'
  printf '\033]4;3;#d4d697\007'
  printf '\033]4;4;#4387cf\007'
  printf '\033]4;5;#b86cb4\007'
  printf '\033]4;6;#72d5c6\007'
  printf '\033]4;7;#ced4cd\007'
  printf '\033]4;8;#9a9b99\007'
  printf '\033]4;9;#c37d62\007'
  printf '\033]4;10;#83d0a2\007'
  printf '\033]4;11;#fdfdc5\007'
  printf '\033]4;12;#89d3f6\007'
  printf '\033]4;13;#ff2c7a\007'
  printf '\033]4;14;#82eada\007'
  printf '\033]4;15;#fdfdf6\007'
  printf '\033]10;#c3cac2\007'
  printf '\033]11;#191919\007'
  printf '\033]12;#fcdc08\007'
}
```

### Overnight Slumber

```bash
overnight_slumber() {
  printf '\033]4;0;#0a1222\007'
  printf '\033]4;1;#ffa7c4\007'
  printf '\033]4;2;#85cc95\007'
  printf '\033]4;3;#ffcb8b\007'
  printf '\033]4;4;#8dabe1\007'
  printf '\033]4;5;#c792eb\007'
  printf '\033]4;6;#78ccf0\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#575656\007'
  printf '\033]4;9;#ffa7c4\007'
  printf '\033]4;10;#85cc95\007'
  printf '\033]4;11;#ffcb8b\007'
  printf '\033]4;12;#8dabe1\007'
  printf '\033]4;13;#c792eb\007'
  printf '\033]4;14;#ffa7c4\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ced2d6\007'
  printf '\033]11;#0e1729\007'
  printf '\033]12;#ffa7c4\007'
}
```

### owl

```bash
owl() {
  printf '\033]4;0;#302c2c\007'
  printf '\033]4;1;#5a5a5a\007'
  printf '\033]4;2;#989898\007'
  printf '\033]4;3;#cacaca\007'
  printf '\033]4;4;#656565\007'
  printf '\033]4;5;#b1b1b1\007'
  printf '\033]4;6;#7f7f7f\007'
  printf '\033]4;7;#dedede\007'
  printf '\033]4;8;#5d595b\007'
  printf '\033]4;9;#da5b2c\007'
  printf '\033]4;10;#989898\007'
  printf '\033]4;11;#cacaca\007'
  printf '\033]4;12;#656565\007'
  printf '\033]4;13;#b1b1b1\007'
  printf '\033]4;14;#7f7f7f\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dedede\007'
  printf '\033]11;#2f2b2c\007'
  printf '\033]12;#dedede\007'
}
```

### Oxocarbon

```bash
oxocarbon() {
  printf '\033]4;0;#161616\007'
  printf '\033]4;1;#00dfdb\007'
  printf '\033]4;2;#00b4ff\007'
  printf '\033]4;3;#ff4297\007'
  printf '\033]4;4;#00c15a\007'
  printf '\033]4;5;#c693ff\007'
  printf '\033]4;6;#ff74b8\007'
  printf '\033]4;7;#f2f4f8\007'
  printf '\033]4;8;#585858\007'
  printf '\033]4;9;#00dfdb\007'
  printf '\033]4;10;#00b4ff\007'
  printf '\033]4;11;#ff4297\007'
  printf '\033]4;12;#00c15a\007'
  printf '\033]4;13;#c693ff\007'
  printf '\033]4;14;#ff74b8\007'
  printf '\033]4;15;#f2f4f8\007'
  printf '\033]10;#f2f4f8\007'
  printf '\033]11;#161616\007'
  printf '\033]12;#ffffff\007'
}
```

### Pale Night Hc

```bash
pale_night_hc() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f07178\007'
  printf '\033]4;2;#c3e88d\007'
  printf '\033]4;3;#ffcb6b\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#89ddff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#737373\007'
  printf '\033]4;9;#f6a9ae\007'
  printf '\033]4;10;#dbf1ba\007'
  printf '\033]4;11;#ffdfa6\007'
  printf '\033]4;12;#b4ccff\007'
  printf '\033]4;13;#ddbdf2\007'
  printf '\033]4;14;#b8eaff\007'
  printf '\033]4;15;#999999\007'
  printf '\033]10;#cccccc\007'
  printf '\033]11;#3e4251\007'
  printf '\033]12;#ffcb6b\007'
}
```

### Pandora

```bash
pandora() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff4242\007'
  printf '\033]4;2;#74af68\007'
  printf '\033]4;3;#ffad29\007'
  printf '\033]4;4;#338f86\007'
  printf '\033]4;5;#9414e6\007'
  printf '\033]4;6;#23d7d7\007'
  printf '\033]4;7;#e2e2e2\007'
  printf '\033]4;8;#3f5648\007'
  printf '\033]4;9;#ff3242\007'
  printf '\033]4;10;#74cd68\007'
  printf '\033]4;11;#ffb929\007'
  printf '\033]4;12;#23d7d7\007'
  printf '\033]4;13;#ff37ff\007'
  printf '\033]4;14;#00ede1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e1e1e1\007'
  printf '\033]11;#141e43\007'
  printf '\033]12;#43d58e\007'
}
```

### Paraiso Dark

```bash
paraiso_dark() {
  printf '\033]4;0;#2f1e2e\007'
  printf '\033]4;1;#ef6155\007'
  printf '\033]4;2;#48b685\007'
  printf '\033]4;3;#fec418\007'
  printf '\033]4;4;#06b6ef\007'
  printf '\033]4;5;#815ba4\007'
  printf '\033]4;6;#5bc4bf\007'
  printf '\033]4;7;#a39e9b\007'
  printf '\033]4;8;#776e71\007'
  printf '\033]4;9;#ef6155\007'
  printf '\033]4;10;#48b685\007'
  printf '\033]4;11;#fec418\007'
  printf '\033]4;12;#06b6ef\007'
  printf '\033]4;13;#815ba4\007'
  printf '\033]4;14;#5bc4bf\007'
  printf '\033]4;15;#e7e9db\007'
  printf '\033]10;#a39e9b\007'
  printf '\033]11;#2f1e2e\007'
  printf '\033]12;#a39e9b\007'
}
```

### Paul Millr

```bash
paul_millr() {
  printf '\033]4;0;#2a2a2a\007'
  printf '\033]4;1;#ff0000\007'
  printf '\033]4;2;#79ff0f\007'
  printf '\033]4;3;#e7bf00\007'
  printf '\033]4;4;#396bd7\007'
  printf '\033]4;5;#b449be\007'
  printf '\033]4;6;#66ccff\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#ff0080\007'
  printf '\033]4;10;#66ff66\007'
  printf '\033]4;11;#f3d64e\007'
  printf '\033]4;12;#709aed\007'
  printf '\033]4;13;#db67e6\007'
  printf '\033]4;14;#7adff2\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#f2f2f2\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#4d4d4d\007'
}
```

### Pencil Dark

```bash
pencil_dark() {
  printf '\033]4;0;#212121\007'
  printf '\033]4;1;#c30771\007'
  printf '\033]4;2;#10a778\007'
  printf '\033]4;3;#a89c14\007'
  printf '\033]4;4;#008ec4\007'
  printf '\033]4;5;#5f4986\007'
  printf '\033]4;6;#20a5ba\007'
  printf '\033]4;7;#d9d9d9\007'
  printf '\033]4;8;#4f4f4f\007'
  printf '\033]4;9;#fb007a\007'
  printf '\033]4;10;#5fd7af\007'
  printf '\033]4;11;#f3e430\007'
  printf '\033]4;12;#20bbfc\007'
  printf '\033]4;13;#6855de\007'
  printf '\033]4;14;#4fb8cc\007'
  printf '\033]4;15;#f1f1f1\007'
  printf '\033]10;#f1f1f1\007'
  printf '\033]11;#212121\007'
  printf '\033]12;#20bbfc\007'
}
```

### Pencil Light

```bash
pencil_light() {
  printf '\033]4;0;#212121\007'
  printf '\033]4;1;#c30771\007'
  printf '\033]4;2;#10a778\007'
  printf '\033]4;3;#a89c14\007'
  printf '\033]4;4;#008ec4\007'
  printf '\033]4;5;#523c79\007'
  printf '\033]4;6;#20a5ba\007'
  printf '\033]4;7;#b3b3b3\007'
  printf '\033]4;8;#424242\007'
  printf '\033]4;9;#fb007a\007'
  printf '\033]4;10;#52caa2\007'
  printf '\033]4;11;#c0b100\007'
  printf '\033]4;12;#20bbfc\007'
  printf '\033]4;13;#6855de\007'
  printf '\033]4;14;#4fb8cc\007'
  printf '\033]4;15;#f1f1f1\007'
  printf '\033]10;#424242\007'
  printf '\033]11;#f1f1f1\007'
  printf '\033]12;#20bbfc\007'
}
```

### Peppermint

```bash
peppermint() {
  printf '\033]4;0;#353535\007'
  printf '\033]4;1;#e74669\007'
  printf '\033]4;2;#89d287\007'
  printf '\033]4;3;#dab853\007'
  printf '\033]4;4;#449fd0\007'
  printf '\033]4;5;#da62dc\007'
  printf '\033]4;6;#65aaaf\007'
  printf '\033]4;7;#b4b4b4\007'
  printf '\033]4;8;#535353\007'
  printf '\033]4;9;#e4859b\007'
  printf '\033]4;10;#a3cca2\007'
  printf '\033]4;11;#e1e487\007'
  printf '\033]4;12;#6fbce2\007'
  printf '\033]4;13;#e586e7\007'
  printf '\033]4;14;#96dcdb\007'
  printf '\033]4;15;#dfdfdf\007'
  printf '\033]10;#c8c8c8\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Phala Green Dark

```bash
phala_green_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ab1500\007'
  printf '\033]4;2;#00b100\007'
  printf '\033]4;3;#a9a700\007'
  printf '\033]4;4;#0223c0\007'
  printf '\033]4;5;#c22ec0\007'
  printf '\033]4;6;#00b4c0\007'
  printf '\033]4;7;#cbcbcb\007'
  printf '\033]4;8;#797979\007'
  printf '\033]4;9;#ed2200\007'
  printf '\033]4;10;#00db00\007'
  printf '\033]4;11;#eae700\007'
  printf '\033]4;12;#0433ff\007'
  printf '\033]4;13;#ed3aea\007'
  printf '\033]4;14;#00e8ea\007'
  printf '\033]4;15;#eaeaea\007'
  printf '\033]10;#c1fc03\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#c1fc03\007'
}
```

### Piatto Light

```bash
piatto_light() {
  printf '\033]4;0;#414141\007'
  printf '\033]4;1;#b23771\007'
  printf '\033]4;2;#66781e\007'
  printf '\033]4;3;#cd6f34\007'
  printf '\033]4;4;#3c5ea8\007'
  printf '\033]4;5;#a454b2\007'
  printf '\033]4;6;#66781e\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#3f3f3f\007'
  printf '\033]4;9;#db3365\007'
  printf '\033]4;10;#829429\007'
  printf '\033]4;11;#cd6f34\007'
  printf '\033]4;12;#3c5ea8\007'
  printf '\033]4;13;#a454b2\007'
  printf '\033]4;14;#829429\007'
  printf '\033]4;15;#f2f2f2\007'
  printf '\033]10;#414141\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#5e77c8\007'
}
```

### Pnevma

```bash
pnevma() {
  printf '\033]4;0;#2f2e2d\007'
  printf '\033]4;1;#a36666\007'
  printf '\033]4;2;#90a57d\007'
  printf '\033]4;3;#d7af87\007'
  printf '\033]4;4;#7fa5bd\007'
  printf '\033]4;5;#c79ec4\007'
  printf '\033]4;6;#8adbb4\007'
  printf '\033]4;7;#d0d0d0\007'
  printf '\033]4;8;#4a4845\007'
  printf '\033]4;9;#d78787\007'
  printf '\033]4;10;#afbea2\007'
  printf '\033]4;11;#e4c9af\007'
  printf '\033]4;12;#a1bdce\007'
  printf '\033]4;13;#d7beda\007'
  printf '\033]4;14;#b1e7dd\007'
  printf '\033]4;15;#efefef\007'
  printf '\033]10;#d0d0d0\007'
  printf '\033]11;#1c1c1c\007'
  printf '\033]12;#e4c9af\007'
}
```

### Poimandres

```bash
poimandres() {
  printf '\033]4;0;#1a1e28\007'
  printf '\033]4;1;#d0679d\007'
  printf '\033]4;2;#5de4c7\007'
  printf '\033]4;3;#fffac2\007'
  printf '\033]4;4;#89ddff\007'
  printf '\033]4;5;#fcc5e9\007'
  printf '\033]4;6;#add7ff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#a6accd\007'
  printf '\033]4;9;#d0679d\007'
  printf '\033]4;10;#5de4c7\007'
  printf '\033]4;11;#fffac2\007'
  printf '\033]4;12;#add7ff\007'
  printf '\033]4;13;#fae4fc\007'
  printf '\033]4;14;#89ddff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#a6accd\007'
  printf '\033]11;#1a1e28\007'
  printf '\033]12;#ffffff\007'
}
```

### Poimandres Darker

```bash
poimandres_darker() {
  printf '\033]4;0;#16161e\007'
  printf '\033]4;1;#d0679d\007'
  printf '\033]4;2;#5de4c7\007'
  printf '\033]4;3;#fffac2\007'
  printf '\033]4;4;#89ddff\007'
  printf '\033]4;5;#fcc5e9\007'
  printf '\033]4;6;#add7ff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#a6accd\007'
  printf '\033]4;9;#d0679d\007'
  printf '\033]4;10;#5de4c7\007'
  printf '\033]4;11;#fffac2\007'
  printf '\033]4;12;#add7ff\007'
  printf '\033]4;13;#fae4fc\007'
  printf '\033]4;14;#89ddff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#a6accd\007'
  printf '\033]11;#16161e\007'
  printf '\033]12;#ffffff\007'
}
```

### Poimandres Storm

```bash
poimandres_storm() {
  printf '\033]4;0;#252b37\007'
  printf '\033]4;1;#d0679d\007'
  printf '\033]4;2;#5de4c7\007'
  printf '\033]4;3;#fffac2\007'
  printf '\033]4;4;#89ddff\007'
  printf '\033]4;5;#f087bd\007'
  printf '\033]4;6;#89ddff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#a6accd\007'
  printf '\033]4;9;#d0679d\007'
  printf '\033]4;10;#5de4c7\007'
  printf '\033]4;11;#fffac2\007'
  printf '\033]4;12;#add7ff\007'
  printf '\033]4;13;#f087bd\007'
  printf '\033]4;14;#add7ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#a6accd\007'
  printf '\033]11;#252b37\007'
  printf '\033]12;#ffffff\007'
}
```

### Poimandres White

```bash
poimandres_white() {
  printf '\033]4;0;#fefeff\007'
  printf '\033]4;1;#ff2090\007'
  printf '\033]4;2;#01dab2\007'
  printf '\033]4;3;#e5ba4e\007'
  printf '\033]4;4;#8abacd\007'
  printf '\033]4;5;#eb8394\007'
  printf '\033]4;6;#8abacd\007'
  printf '\033]4;7;#000000\007'
  printf '\033]4;8;#969cbd\007'
  printf '\033]4;9;#ff2090\007'
  printf '\033]4;10;#01dab2\007'
  printf '\033]4;11;#e5ba4e\007'
  printf '\033]4;12;#0ebfff\007'
  printf '\033]4;13;#eb8394\007'
  printf '\033]4;14;#0ebfff\007'
  printf '\033]4;15;#000000\007'
  printf '\033]10;#969cbd\007'
  printf '\033]11;#fefeff\007'
  printf '\033]12;#969cbd\007'
}
```

### Popping And Locking

```bash
popping_and_locking() {
  printf '\033]4;0;#1d2021\007'
  printf '\033]4;1;#cc241d\007'
  printf '\033]4;2;#98971a\007'
  printf '\033]4;3;#d79921\007'
  printf '\033]4;4;#458588\007'
  printf '\033]4;5;#b16286\007'
  printf '\033]4;6;#689d6a\007'
  printf '\033]4;7;#a89984\007'
  printf '\033]4;8;#928374\007'
  printf '\033]4;9;#f42c3e\007'
  printf '\033]4;10;#b8bb26\007'
  printf '\033]4;11;#fabd2f\007'
  printf '\033]4;12;#99c6ca\007'
  printf '\033]4;13;#d3869b\007'
  printf '\033]4;14;#7ec16e\007'
  printf '\033]4;15;#ebdbb2\007'
  printf '\033]10;#ebdbb2\007'
  printf '\033]11;#181921\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Powershell

```bash
powershell() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#981a22\007'
  printf '\033]4;2;#098003\007'
  printf '\033]4;3;#c4a000\007'
  printf '\033]4;4;#4140c3\007'
  printf '\033]4;5;#d33682\007'
  printf '\033]4;6;#0e807f\007'
  printf '\033]4;7;#7f7c7f\007'
  printf '\033]4;8;#808080\007'
  printf '\033]4;9;#ef2929\007'
  printf '\033]4;10;#1cfe3c\007'
  printf '\033]4;11;#fefe45\007'
  printf '\033]4;12;#268ad2\007'
  printf '\033]4;13;#fe13fa\007'
  printf '\033]4;14;#29fffe\007'
  printf '\033]4;15;#c2c1c3\007'
  printf '\033]10;#f6f6f7\007'
  printf '\033]11;#052454\007'
  printf '\033]12;#f6f6f7\007'
}
```

### Primary

```bash
primary() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#db4437\007'
  printf '\033]4;2;#0f9d58\007'
  printf '\033]4;3;#f4b400\007'
  printf '\033]4;4;#4285f4\007'
  printf '\033]4;5;#db4437\007'
  printf '\033]4;6;#4285f4\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#db4437\007'
  printf '\033]4;10;#0f9d58\007'
  printf '\033]4;11;#f4b400\007'
  printf '\033]4;12;#4285f4\007'
  printf '\033]4;13;#4285f4\007'
  printf '\033]4;14;#0f9d58\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Pro

```bash
pro() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#990000\007'
  printf '\033]4;2;#00a600\007'
  printf '\033]4;3;#999900\007'
  printf '\033]4;4;#2009db\007'
  printf '\033]4;5;#b200b2\007'
  printf '\033]4;6;#00a6b2\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e50000\007'
  printf '\033]4;10;#00d900\007'
  printf '\033]4;11;#e5e500\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00e5e5\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#f2f2f2\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#4d4d4d\007'
}
```

### Pro Light

```bash
pro_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e5492b\007'
  printf '\033]4;2;#50d148\007'
  printf '\033]4;3;#c6c440\007'
  printf '\033]4;4;#3b75ff\007'
  printf '\033]4;5;#ed66e8\007'
  printf '\033]4;6;#4ed2de\007'
  printf '\033]4;7;#c2c2c2\007'
  printf '\033]4;8;#9f9f9f\007'
  printf '\033]4;9;#ff6640\007'
  printf '\033]4;10;#48d53e\007'
  printf '\033]4;11;#bfbe23\007'
  printf '\033]4;12;#0082ff\007'
  printf '\033]4;13;#ff7eff\007'
  printf '\033]4;14;#3bd1d2\007'
  printf '\033]4;15;#f2f2f2\007'
  printf '\033]10;#191919\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#4d4d4d\007'
}
```

### Purple Rain

```bash
purple_rain() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff260e\007'
  printf '\033]4;2;#9be205\007'
  printf '\033]4;3;#ffc400\007'
  printf '\033]4;4;#00a2fa\007'
  printf '\033]4;5;#815bb5\007'
  printf '\033]4;6;#00deef\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#565656\007'
  printf '\033]4;9;#ff4250\007'
  printf '\033]4;10;#b8e36e\007'
  printf '\033]4;11;#ffd852\007'
  printf '\033]4;12;#00a6ff\007'
  printf '\033]4;13;#ac7bf0\007'
  printf '\033]4;14;#74fdf3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#fffbf6\007'
  printf '\033]11;#21084a\007'
  printf '\033]12;#ff271d\007'
}
```

### Purplepeter

```bash
purplepeter() {
  printf '\033]4;0;#0a0520\007'
  printf '\033]4;1;#ff796d\007'
  printf '\033]4;2;#99b481\007'
  printf '\033]4;3;#efdfac\007'
  printf '\033]4;4;#66d9ef\007'
  printf '\033]4;5;#e78fcd\007'
  printf '\033]4;6;#ba8cff\007'
  printf '\033]4;7;#ffba81\007'
  printf '\033]4;8;#504b63\007'
  printf '\033]4;9;#f99f92\007'
  printf '\033]4;10;#b4be8f\007'
  printf '\033]4;11;#f2e9bf\007'
  printf '\033]4;12;#79daed\007'
  printf '\033]4;13;#ba91d4\007'
  printf '\033]4;14;#a0a0d6\007'
  printf '\033]4;15;#b9aed3\007'
  printf '\033]10;#ece7fa\007'
  printf '\033]11;#2a1a4a\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Rapture

```bash
rapture() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fc644d\007'
  printf '\033]4;2;#7afde1\007'
  printf '\033]4;3;#fff09b\007'
  printf '\033]4;4;#6c9bf5\007'
  printf '\033]4;5;#ff4fa1\007'
  printf '\033]4;6;#64e0ff\007'
  printf '\033]4;7;#c0c9e5\007'
  printf '\033]4;8;#304b66\007'
  printf '\033]4;9;#fc644d\007'
  printf '\033]4;10;#7afde1\007'
  printf '\033]4;11;#fff09b\007'
  printf '\033]4;12;#6c9bf5\007'
  printf '\033]4;13;#ff4fa1\007'
  printf '\033]4;14;#64e0ff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c0c9e5\007'
  printf '\033]11;#111e2a\007'
  printf '\033]12;#ffffff\007'
}
```

### Raycast Dark

```bash
raycast_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff5360\007'
  printf '\033]4;2;#59d499\007'
  printf '\033]4;3;#ffc531\007'
  printf '\033]4;4;#56c2ff\007'
  printf '\033]4;5;#cf2f98\007'
  printf '\033]4;6;#52eee5\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#ff6363\007'
  printf '\033]4;10;#59d499\007'
  printf '\033]4;11;#ffc531\007'
  printf '\033]4;12;#56c2ff\007'
  printf '\033]4;13;#cf2f98\007'
  printf '\033]4;14;#52eee5\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1a1a1a\007'
  printf '\033]12;#cccccc\007'
}
```

### Raycast Light

```bash
raycast_light() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b12424\007'
  printf '\033]4;2;#006b4f\007'
  printf '\033]4;3;#f8a300\007'
  printf '\033]4;4;#138af2\007'
  printf '\033]4;5;#9a1b6e\007'
  printf '\033]4;6;#3eb8bf\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#b12424\007'
  printf '\033]4;10;#006b4f\007'
  printf '\033]4;11;#f8a300\007'
  printf '\033]4;12;#138af2\007'
  printf '\033]4;13;#9a1b6e\007'
  printf '\033]4;14;#3eb8bf\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Rebecca

```bash
rebecca() {
  printf '\033]4;0;#12131e\007'
  printf '\033]4;1;#dd7755\007'
  printf '\033]4;2;#04dbb5\007'
  printf '\033]4;3;#f2e7b7\007'
  printf '\033]4;4;#7aa5ff\007'
  printf '\033]4;5;#bf9cf9\007'
  printf '\033]4;6;#56d3c2\007'
  printf '\033]4;7;#e4e3e9\007'
  printf '\033]4;8;#666699\007'
  printf '\033]4;9;#ff92cd\007'
  printf '\033]4;10;#01eac0\007'
  printf '\033]4;11;#fffca8\007'
  printf '\033]4;12;#69c0fa\007'
  printf '\033]4;13;#c17ff8\007'
  printf '\033]4;14;#8bfde1\007'
  printf '\033]4;15;#f4f2f9\007'
  printf '\033]10;#e8e6ed\007'
  printf '\033]11;#292a44\007'
  printf '\033]12;#b89bf9\007'
}
```

### Red Alert

```bash
red_alert() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d62e4e\007'
  printf '\033]4;2;#71be6b\007'
  printf '\033]4;3;#beb86b\007'
  printf '\033]4;4;#489bee\007'
  printf '\033]4;5;#e979d7\007'
  printf '\033]4;6;#6bbeb8\007'
  printf '\033]4;7;#d6d6d6\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e02553\007'
  printf '\033]4;10;#aff08c\007'
  printf '\033]4;11;#dfddb7\007'
  printf '\033]4;12;#65aaf1\007'
  printf '\033]4;13;#ddb7df\007'
  printf '\033]4;14;#b7dfdd\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#762423\007'
  printf '\033]12;#ffffff\007'
}
```

### Red Planet

```bash
red_planet() {
  printf '\033]4;0;#202020\007'
  printf '\033]4;1;#8c3432\007'
  printf '\033]4;2;#728271\007'
  printf '\033]4;3;#e8bf6a\007'
  printf '\033]4;4;#69819e\007'
  printf '\033]4;5;#896492\007'
  printf '\033]4;6;#5b8390\007'
  printf '\033]4;7;#b9aa99\007'
  printf '\033]4;8;#676767\007'
  printf '\033]4;9;#b55242\007'
  printf '\033]4;10;#869985\007'
  printf '\033]4;11;#ebeb91\007'
  printf '\033]4;12;#60827e\007'
  printf '\033]4;13;#de4974\007'
  printf '\033]4;14;#38add8\007'
  printf '\033]4;15;#d6bfb8\007'
  printf '\033]10;#c2b790\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#c2b790\007'
}
```

### Red Sands

```bash
red_sands() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff3f00\007'
  printf '\033]4;2;#00bb00\007'
  printf '\033]4;3;#e7b000\007'
  printf '\033]4;4;#0072ff\007'
  printf '\033]4;5;#bb00bb\007'
  printf '\033]4;6;#00bbbb\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#6e6e6e\007'
  printf '\033]4;9;#d41a1a\007'
  printf '\033]4;10;#00bb00\007'
  printf '\033]4;11;#e7b000\007'
  printf '\033]4;12;#0072ae\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#d7c9a7\007'
  printf '\033]11;#7a251e\007'
  printf '\033]12;#ffffff\007'
}
```

### Relaxed

```bash
relaxed() {
  printf '\033]4;0;#151515\007'
  printf '\033]4;1;#bc5653\007'
  printf '\033]4;2;#909d63\007'
  printf '\033]4;3;#ebc17a\007'
  printf '\033]4;4;#6a8799\007'
  printf '\033]4;5;#b06698\007'
  printf '\033]4;6;#c9dfff\007'
  printf '\033]4;7;#d9d9d9\007'
  printf '\033]4;8;#636363\007'
  printf '\033]4;9;#bc5653\007'
  printf '\033]4;10;#a0ac77\007'
  printf '\033]4;11;#ebc17a\007'
  printf '\033]4;12;#7eaac7\007'
  printf '\033]4;13;#b06698\007'
  printf '\033]4;14;#acbbd0\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#d9d9d9\007'
  printf '\033]11;#353a44\007'
  printf '\033]12;#d9d9d9\007'
}
```

### Retro

```bash
retro() {
  printf '\033]4;0;#13a10e\007'
  printf '\033]4;1;#13a10e\007'
  printf '\033]4;2;#13a10e\007'
  printf '\033]4;3;#13a10e\007'
  printf '\033]4;4;#13a10e\007'
  printf '\033]4;5;#13a10e\007'
  printf '\033]4;6;#13a10e\007'
  printf '\033]4;7;#13a10e\007'
  printf '\033]4;8;#16ba10\007'
  printf '\033]4;9;#16ba10\007'
  printf '\033]4;10;#16ba10\007'
  printf '\033]4;11;#16ba10\007'
  printf '\033]4;12;#16ba10\007'
  printf '\033]4;13;#16ba10\007'
  printf '\033]4;14;#16ba10\007'
  printf '\033]4;15;#16ba10\007'
  printf '\033]10;#13a10e\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#13a10e\007'
}
```

### Retro Legends

```bash
retro_legends() {
  printf '\033]4;0;#262626\007'
  printf '\033]4;1;#de5454\007'
  printf '\033]4;2;#45eb45\007'
  printf '\033]4;3;#f7bf2b\007'
  printf '\033]4;4;#4066f2\007'
  printf '\033]4;5;#bf4cf2\007'
  printf '\033]4;6;#40d9e6\007'
  printf '\033]4;7;#bfe6bf\007'
  printf '\033]4;8;#4c594c\007'
  printf '\033]4;9;#ff6666\007'
  printf '\033]4;10;#59ff59\007'
  printf '\033]4;11;#ffd933\007'
  printf '\033]4;12;#4c80ff\007'
  printf '\033]4;13;#e666ff\007'
  printf '\033]4;14;#59e6ff\007'
  printf '\033]4;15;#f2fff2\007'
  printf '\033]10;#45eb45\007'
  printf '\033]11;#0d0d0d\007'
  printf '\033]12;#45eb45\007'
}
```

### Rippedcasts

```bash
rippedcasts() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cdaf95\007'
  printf '\033]4;2;#a8ff60\007'
  printf '\033]4;3;#bfbb1f\007'
  printf '\033]4;4;#75a5b0\007'
  printf '\033]4;5;#ff73fd\007'
  printf '\033]4;6;#5a647e\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#eecbad\007'
  printf '\033]4;10;#bcee68\007'
  printf '\033]4;11;#e5e500\007'
  printf '\033]4;12;#86bdc9\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#8c9bc4\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#2b2b2b\007'
  printf '\033]12;#7f7f7f\007'
}
```

### Rose Pine

```bash
rose_pine() {
  printf '\033]4;0;#26233a\007'
  printf '\033]4;1;#eb6f92\007'
  printf '\033]4;2;#31748f\007'
  printf '\033]4;3;#f6c177\007'
  printf '\033]4;4;#9ccfd8\007'
  printf '\033]4;5;#c4a7e7\007'
  printf '\033]4;6;#ebbcba\007'
  printf '\033]4;7;#e0def4\007'
  printf '\033]4;8;#6e6a86\007'
  printf '\033]4;9;#eb6f92\007'
  printf '\033]4;10;#31748f\007'
  printf '\033]4;11;#f6c177\007'
  printf '\033]4;12;#9ccfd8\007'
  printf '\033]4;13;#c4a7e7\007'
  printf '\033]4;14;#ebbcba\007'
  printf '\033]4;15;#e0def4\007'
  printf '\033]10;#e0def4\007'
  printf '\033]11;#191724\007'
  printf '\033]12;#e0def4\007'
}
```

### Rose Pine Dawn

```bash
rose_pine_dawn() {
  printf '\033]4;0;#f2e9e1\007'
  printf '\033]4;1;#b4637a\007'
  printf '\033]4;2;#286983\007'
  printf '\033]4;3;#ea9d34\007'
  printf '\033]4;4;#56949f\007'
  printf '\033]4;5;#907aa9\007'
  printf '\033]4;6;#d7827e\007'
  printf '\033]4;7;#575279\007'
  printf '\033]4;8;#9893a5\007'
  printf '\033]4;9;#b4637a\007'
  printf '\033]4;10;#286983\007'
  printf '\033]4;11;#ea9d34\007'
  printf '\033]4;12;#56949f\007'
  printf '\033]4;13;#907aa9\007'
  printf '\033]4;14;#d7827e\007'
  printf '\033]4;15;#575279\007'
  printf '\033]10;#575279\007'
  printf '\033]11;#faf4ed\007'
  printf '\033]12;#575279\007'
}
```

### Rose Pine Moon

```bash
rose_pine_moon() {
  printf '\033]4;0;#393552\007'
  printf '\033]4;1;#eb6f92\007'
  printf '\033]4;2;#3e8fb0\007'
  printf '\033]4;3;#f6c177\007'
  printf '\033]4;4;#9ccfd8\007'
  printf '\033]4;5;#c4a7e7\007'
  printf '\033]4;6;#ea9a97\007'
  printf '\033]4;7;#e0def4\007'
  printf '\033]4;8;#6e6a86\007'
  printf '\033]4;9;#eb6f92\007'
  printf '\033]4;10;#3e8fb0\007'
  printf '\033]4;11;#f6c177\007'
  printf '\033]4;12;#9ccfd8\007'
  printf '\033]4;13;#c4a7e7\007'
  printf '\033]4;14;#ea9a97\007'
  printf '\033]4;15;#e0def4\007'
  printf '\033]10;#e0def4\007'
  printf '\033]11;#232136\007'
  printf '\033]12;#e0def4\007'
}
```

### Rouge 2

```bash
rouge_2() {
  printf '\033]4;0;#5d5d6b\007'
  printf '\033]4;1;#c6797e\007'
  printf '\033]4;2;#969e92\007'
  printf '\033]4;3;#dbcdab\007'
  printf '\033]4;4;#6e94b9\007'
  printf '\033]4;5;#4c4e78\007'
  printf '\033]4;6;#8ab6c1\007'
  printf '\033]4;7;#e8e8ea\007'
  printf '\033]4;8;#616274\007'
  printf '\033]4;9;#c6797e\007'
  printf '\033]4;10;#e6dcc4\007'
  printf '\033]4;11;#e6dcc4\007'
  printf '\033]4;12;#98b3cd\007'
  printf '\033]4;13;#8283a1\007'
  printf '\033]4;14;#abcbd3\007'
  printf '\033]4;15;#e8e8ea\007'
  printf '\033]10;#a2a3aa\007'
  printf '\033]11;#17182b\007'
  printf '\033]12;#969e92\007'
}
```

### Royal

```bash
royal() {
  printf '\033]4;0;#241f2b\007'
  printf '\033]4;1;#91284c\007'
  printf '\033]4;2;#23801c\007'
  printf '\033]4;3;#b49d27\007'
  printf '\033]4;4;#6580b0\007'
  printf '\033]4;5;#674d96\007'
  printf '\033]4;6;#8aaabe\007'
  printf '\033]4;7;#524966\007'
  printf '\033]4;8;#3e3a4a\007'
  printf '\033]4;9;#d5356c\007'
  printf '\033]4;10;#2cd946\007'
  printf '\033]4;11;#fde83b\007'
  printf '\033]4;12;#90baf9\007'
  printf '\033]4;13;#a479e3\007'
  printf '\033]4;14;#acd4eb\007'
  printf '\033]4;15;#9e8cbd\007'
  printf '\033]10;#514968\007'
  printf '\033]11;#100815\007'
  printf '\033]12;#524966\007'
}
```

### Ryuuko

```bash
ryuuko() {
  printf '\033]4;0;#2c3941\007'
  printf '\033]4;1;#865f5b\007'
  printf '\033]4;2;#66907d\007'
  printf '\033]4;3;#b1a990\007'
  printf '\033]4;4;#6a8e95\007'
  printf '\033]4;5;#b18a73\007'
  printf '\033]4;6;#88b2ac\007'
  printf '\033]4;7;#ececec\007'
  printf '\033]4;8;#5d7079\007'
  printf '\033]4;9;#865f5b\007'
  printf '\033]4;10;#66907d\007'
  printf '\033]4;11;#b1a990\007'
  printf '\033]4;12;#6a8e95\007'
  printf '\033]4;13;#b18a73\007'
  printf '\033]4;14;#88b2ac\007'
  printf '\033]4;15;#ececec\007'
  printf '\033]10;#ececec\007'
  printf '\033]11;#2c3941\007'
  printf '\033]12;#ececec\007'
}
```

### Sakura

```bash
sakura() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d52370\007'
  printf '\033]4;2;#41af1a\007'
  printf '\033]4;3;#bc7053\007'
  printf '\033]4;4;#6964ab\007'
  printf '\033]4;5;#c71fbf\007'
  printf '\033]4;6;#939393\007'
  printf '\033]4;7;#998eac\007'
  printf '\033]4;8;#786d69\007'
  printf '\033]4;9;#f41d99\007'
  printf '\033]4;10;#22e529\007'
  printf '\033]4;11;#f59574\007'
  printf '\033]4;12;#9892f1\007'
  printf '\033]4;13;#e90cdd\007'
  printf '\033]4;14;#eeeeee\007'
  printf '\033]4;15;#cbb6ff\007'
  printf '\033]10;#dd7bdc\007'
  printf '\033]11;#18131e\007'
  printf '\033]12;#ff65fd\007'
}
```

### Scarlet Protocol

```bash
scarlet_protocol() {
  printf '\033]4;0;#101116\007'
  printf '\033]4;1;#ff0051\007'
  printf '\033]4;2;#00dc84\007'
  printf '\033]4;3;#faf945\007'
  printf '\033]4;4;#0271b6\007'
  printf '\033]4;5;#ca30c7\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff6e67\007'
  printf '\033]4;10;#5ffa68\007'
  printf '\033]4;11;#fffc67\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#bd35ec\007'
  printf '\033]4;14;#60fdff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#e41951\007'
  printf '\033]11;#1c153d\007'
  printf '\033]12;#76ff9f\007'
}
```

### Sea Shells

```bash
sea_shells() {
  printf '\033]4;0;#17384c\007'
  printf '\033]4;1;#d15123\007'
  printf '\033]4;2;#027c9b\007'
  printf '\033]4;3;#fca02f\007'
  printf '\033]4;4;#1e4950\007'
  printf '\033]4;5;#68d4f1\007'
  printf '\033]4;6;#50a3b5\007'
  printf '\033]4;7;#deb88d\007'
  printf '\033]4;8;#434b53\007'
  printf '\033]4;9;#d48678\007'
  printf '\033]4;10;#628d98\007'
  printf '\033]4;11;#fdd39f\007'
  printf '\033]4;12;#1bbcdd\007'
  printf '\033]4;13;#bbe3ee\007'
  printf '\033]4;14;#87acb4\007'
  printf '\033]4;15;#fee4ce\007'
  printf '\033]10;#deb88d\007'
  printf '\033]11;#09141b\007'
  printf '\033]12;#fca02f\007'
}
```

### Seafoam Pastel

```bash
seafoam_pastel() {
  printf '\033]4;0;#757575\007'
  printf '\033]4;1;#825d4d\007'
  printf '\033]4;2;#728c62\007'
  printf '\033]4;3;#ada16d\007'
  printf '\033]4;4;#4d7b82\007'
  printf '\033]4;5;#8a7267\007'
  printf '\033]4;6;#729494\007'
  printf '\033]4;7;#e0e0e0\007'
  printf '\033]4;8;#8a8a8a\007'
  printf '\033]4;9;#cf937a\007'
  printf '\033]4;10;#98d9aa\007'
  printf '\033]4;11;#fae79d\007'
  printf '\033]4;12;#7ac3cf\007'
  printf '\033]4;13;#d6b2a1\007'
  printf '\033]4;14;#ade0e0\007'
  printf '\033]4;15;#e0e0e0\007'
  printf '\033]10;#d4e7d4\007'
  printf '\033]11;#243435\007'
  printf '\033]12;#57647a\007'
}
```

### Selenized Black

```bash
selenized_black() {
  printf '\033]4;0;#252525\007'
  printf '\033]4;1;#ed4a46\007'
  printf '\033]4;2;#70b433\007'
  printf '\033]4;3;#dbb32d\007'
  printf '\033]4;4;#368aeb\007'
  printf '\033]4;5;#eb6eb7\007'
  printf '\033]4;6;#3fc5b7\007'
  printf '\033]4;7;#b9b9b9\007'
  printf '\033]4;8;#777777\007'
  printf '\033]4;9;#ff5e56\007'
  printf '\033]4;10;#83c746\007'
  printf '\033]4;11;#efc541\007'
  printf '\033]4;12;#4f9cfe\007'
  printf '\033]4;13;#ff81ca\007'
  printf '\033]4;14;#56d8c9\007'
  printf '\033]4;15;#dedede\007'
  printf '\033]10;#b9b9b9\007'
  printf '\033]11;#181818\007'
  printf '\033]12;#777777\007'
}
```

### Selenized Dark

```bash
selenized_dark() {
  printf '\033]4;0;#184956\007'
  printf '\033]4;1;#fa5750\007'
  printf '\033]4;2;#75b938\007'
  printf '\033]4;3;#dbb32d\007'
  printf '\033]4;4;#4695f7\007'
  printf '\033]4;5;#f275be\007'
  printf '\033]4;6;#41c7b9\007'
  printf '\033]4;7;#adbcbc\007'
  printf '\033]4;8;#72898f\007'
  printf '\033]4;9;#ff665c\007'
  printf '\033]4;10;#84c747\007'
  printf '\033]4;11;#ebc13d\007'
  printf '\033]4;12;#58a3ff\007'
  printf '\033]4;13;#ff84cd\007'
  printf '\033]4;14;#53d6c7\007'
  printf '\033]4;15;#cad8d9\007'
  printf '\033]10;#adbcbc\007'
  printf '\033]11;#103c48\007'
  printf '\033]12;#adbcbc\007'
}
```

### Selenized Light

```bash
selenized_light() {
  printf '\033]4;0;#ece3cc\007'
  printf '\033]4;1;#d2212d\007'
  printf '\033]4;2;#489100\007'
  printf '\033]4;3;#ad8900\007'
  printf '\033]4;4;#0072d4\007'
  printf '\033]4;5;#ca4898\007'
  printf '\033]4;6;#009c8f\007'
  printf '\033]4;7;#53676d\007'
  printf '\033]4;8;#909995\007'
  printf '\033]4;9;#cc1729\007'
  printf '\033]4;10;#428b00\007'
  printf '\033]4;11;#a78300\007'
  printf '\033]4;12;#006dce\007'
  printf '\033]4;13;#c44392\007'
  printf '\033]4;14;#00978a\007'
  printf '\033]4;15;#3a4d53\007'
  printf '\033]10;#53676d\007'
  printf '\033]11;#fbf3db\007'
  printf '\033]12;#53676d\007'
}
```

### Seoulbones Dark

```bash
seoulbones_dark() {
  printf '\033]4;0;#4b4b4b\007'
  printf '\033]4;1;#e388a3\007'
  printf '\033]4;2;#98bd99\007'
  printf '\033]4;3;#ffdf9b\007'
  printf '\033]4;4;#97bdde\007'
  printf '\033]4;5;#a5a6c5\007'
  printf '\033]4;6;#6fbdbe\007'
  printf '\033]4;7;#dddddd\007'
  printf '\033]4;8;#797172\007'
  printf '\033]4;9;#eb99b1\007'
  printf '\033]4;10;#8fcd92\007'
  printf '\033]4;11;#ffe5b3\007'
  printf '\033]4;12;#a2c8e9\007'
  printf '\033]4;13;#b2b3da\007'
  printf '\033]4;14;#6bcacb\007'
  printf '\033]4;15;#a8a8a8\007'
  printf '\033]10;#dddddd\007'
  printf '\033]11;#4b4b4b\007'
  printf '\033]12;#e2e2e2\007'
}
```

### Seoulbones Light

```bash
seoulbones_light() {
  printf '\033]4;0;#e2e2e2\007'
  printf '\033]4;1;#dc5284\007'
  printf '\033]4;2;#628562\007'
  printf '\033]4;3;#c48562\007'
  printf '\033]4;4;#0084a3\007'
  printf '\033]4;5;#896788\007'
  printf '\033]4;6;#008586\007'
  printf '\033]4;7;#555555\007'
  printf '\033]4;8;#a5a0a1\007'
  printf '\033]4;9;#be3c6d\007'
  printf '\033]4;10;#487249\007'
  printf '\033]4;11;#a76b48\007'
  printf '\033]4;12;#006f89\007'
  printf '\033]4;13;#7f4c7e\007'
  printf '\033]4;14;#006f70\007'
  printf '\033]4;15;#777777\007'
  printf '\033]10;#555555\007'
  printf '\033]11;#e2e2e2\007'
  printf '\033]12;#555555\007'
}
```

### Seti

```bash
seti() {
  printf '\033]4;0;#323232\007'
  printf '\033]4;1;#c22832\007'
  printf '\033]4;2;#8ec43d\007'
  printf '\033]4;3;#e0c64f\007'
  printf '\033]4;4;#43a5d5\007'
  printf '\033]4;5;#8b57b5\007'
  printf '\033]4;6;#8ec43d\007'
  printf '\033]4;7;#eeeeee\007'
  printf '\033]4;8;#3f3f3f\007'
  printf '\033]4;9;#c22832\007'
  printf '\033]4;10;#8ec43d\007'
  printf '\033]4;11;#e0c64f\007'
  printf '\033]4;12;#43a5d5\007'
  printf '\033]4;13;#8b57b5\007'
  printf '\033]4;14;#8ec43d\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cacecd\007'
  printf '\033]11;#111213\007'
  printf '\033]12;#e3bf21\007'
}
```

### Shades Of Purple

```bash
shades_of_purple() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d90429\007'
  printf '\033]4;2;#3ad900\007'
  printf '\033]4;3;#ffe700\007'
  printf '\033]4;4;#6943ff\007'
  printf '\033]4;5;#ff2c70\007'
  printf '\033]4;6;#00c5c7\007'
  printf '\033]4;7;#c7c7c7\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#f92a1c\007'
  printf '\033]4;10;#43d426\007'
  printf '\033]4;11;#f1d000\007'
  printf '\033]4;12;#6871ff\007'
  printf '\033]4;13;#ff77ff\007'
  printf '\033]4;14;#79e8fb\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1e1d40\007'
  printf '\033]12;#fad000\007'
}
```

### Shaman

```bash
shaman() {
  printf '\033]4;0;#012026\007'
  printf '\033]4;1;#b2302d\007'
  printf '\033]4;2;#00a941\007'
  printf '\033]4;3;#5e8baa\007'
  printf '\033]4;4;#449a86\007'
  printf '\033]4;5;#00599d\007'
  printf '\033]4;6;#5d7e19\007'
  printf '\033]4;7;#405555\007'
  printf '\033]4;8;#384451\007'
  printf '\033]4;9;#ff4242\007'
  printf '\033]4;10;#2aea5e\007'
  printf '\033]4;11;#8ed4fd\007'
  printf '\033]4;12;#61d5ba\007'
  printf '\033]4;13;#1298ff\007'
  printf '\033]4;14;#98d028\007'
  printf '\033]4;15;#58fbd6\007'
  printf '\033]10;#405555\007'
  printf '\033]11;#001015\007'
  printf '\033]12;#4afcd6\007'
}
```

### Slate

```bash
slate() {
  printf '\033]4;0;#222222\007'
  printf '\033]4;1;#e2a8bf\007'
  printf '\033]4;2;#81d778\007'
  printf '\033]4;3;#c4c9c0\007'
  printf '\033]4;4;#335856\007'
  printf '\033]4;5;#a481d3\007'
  printf '\033]4;6;#15ab9c\007'
  printf '\033]4;7;#02c5e0\007'
  printf '\033]4;8;#ffffff\007'
  printf '\033]4;9;#ffcdd9\007'
  printf '\033]4;10;#beffa8\007'
  printf '\033]4;11;#d0ccca\007'
  printf '\033]4;12;#7ab0d2\007'
  printf '\033]4;13;#c5a7d9\007'
  printf '\033]4;14;#8cdfe0\007'
  printf '\033]4;15;#e0e0e0\007'
  printf '\033]10;#35b1d2\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#87d3c4\007'
}
```

### Sleepy Hollow

```bash
sleepy_hollow() {
  printf '\033]4;0;#572100\007'
  printf '\033]4;1;#ba3934\007'
  printf '\033]4;2;#91773f\007'
  printf '\033]4;3;#b55600\007'
  printf '\033]4;4;#5f63b4\007'
  printf '\033]4;5;#a17c7b\007'
  printf '\033]4;6;#8faea9\007'
  printf '\033]4;7;#af9a91\007'
  printf '\033]4;8;#4e4b61\007'
  printf '\033]4;9;#d9443f\007'
  printf '\033]4;10;#d6b04e\007'
  printf '\033]4;11;#f66813\007'
  printf '\033]4;12;#8086ef\007'
  printf '\033]4;13;#e2c2bb\007'
  printf '\033]4;14;#a4dce7\007'
  printf '\033]4;15;#d2c7a9\007'
  printf '\033]10;#af9a91\007'
  printf '\033]11;#121214\007'
  printf '\033]12;#af9a91\007'
}
```

### Smyck

```bash
smyck() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b84131\007'
  printf '\033]4;2;#7da900\007'
  printf '\033]4;3;#c4a500\007'
  printf '\033]4;4;#62a3c4\007'
  printf '\033]4;5;#ba8acc\007'
  printf '\033]4;6;#207383\007'
  printf '\033]4;7;#a1a1a1\007'
  printf '\033]4;8;#7a7a7a\007'
  printf '\033]4;9;#d6837c\007'
  printf '\033]4;10;#c4f137\007'
  printf '\033]4;11;#fee14d\007'
  printf '\033]4;12;#8dcff0\007'
  printf '\033]4;13;#f79aff\007'
  printf '\033]4;14;#6ad9cf\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#f7f7f7\007'
  printf '\033]11;#1b1b1b\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Snazzy

```bash
snazzy() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fc4346\007'
  printf '\033]4;2;#50fb7c\007'
  printf '\033]4;3;#f0fb8c\007'
  printf '\033]4;4;#49baff\007'
  printf '\033]4;5;#fc4cb4\007'
  printf '\033]4;6;#8be9fe\007'
  printf '\033]4;7;#ededec\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#fc4346\007'
  printf '\033]4;10;#50fb7c\007'
  printf '\033]4;11;#f0fb8c\007'
  printf '\033]4;12;#49baff\007'
  printf '\033]4;13;#fc4cb4\007'
  printf '\033]4;14;#8be9fe\007'
  printf '\033]4;15;#ededec\007'
  printf '\033]10;#ebece6\007'
  printf '\033]11;#1e1f29\007'
  printf '\033]12;#e4e4e4\007'
}
```

### Snazzy Soft

```bash
snazzy_soft() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff5c57\007'
  printf '\033]4;2;#5af78e\007'
  printf '\033]4;3;#f3f99d\007'
  printf '\033]4;4;#57c7ff\007'
  printf '\033]4;5;#ff6ac1\007'
  printf '\033]4;6;#9aedfe\007'
  printf '\033]4;7;#f1f1f0\007'
  printf '\033]4;8;#686868\007'
  printf '\033]4;9;#ff5c57\007'
  printf '\033]4;10;#5af78e\007'
  printf '\033]4;11;#f3f99d\007'
  printf '\033]4;12;#57c7ff\007'
  printf '\033]4;13;#ff6ac1\007'
  printf '\033]4;14;#9aedfe\007'
  printf '\033]4;15;#f1f1f0\007'
  printf '\033]10;#eff0eb\007'
  printf '\033]11;#282a36\007'
  printf '\033]12;#eaeaea\007'
}
```

### Soft Server

```bash
soft_server() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#a2686a\007'
  printf '\033]4;2;#9aa56a\007'
  printf '\033]4;3;#a3906a\007'
  printf '\033]4;4;#6b8fa3\007'
  printf '\033]4;5;#6a71a3\007'
  printf '\033]4;6;#6ba58f\007'
  printf '\033]4;7;#99a3a2\007'
  printf '\033]4;8;#666c6c\007'
  printf '\033]4;9;#dd5c60\007'
  printf '\033]4;10;#bfdf55\007'
  printf '\033]4;11;#deb360\007'
  printf '\033]4;12;#62b1df\007'
  printf '\033]4;13;#606edf\007'
  printf '\033]4;14;#64e39c\007'
  printf '\033]4;15;#d2e0de\007'
  printf '\033]10;#99a3a2\007'
  printf '\033]11;#242626\007'
  printf '\033]12;#d2e0de\007'
}
```

### Solarized Darcula

```bash
solarized_darcula() {
  printf '\033]4;0;#25292a\007'
  printf '\033]4;1;#f24840\007'
  printf '\033]4;2;#629655\007'
  printf '\033]4;3;#b68800\007'
  printf '\033]4;4;#2075c7\007'
  printf '\033]4;5;#797fd4\007'
  printf '\033]4;6;#15968d\007'
  printf '\033]4;7;#d2d8d9\007'
  printf '\033]4;8;#65696a\007'
  printf '\033]4;9;#f24840\007'
  printf '\033]4;10;#629655\007'
  printf '\033]4;11;#b68800\007'
  printf '\033]4;12;#2075c7\007'
  printf '\033]4;13;#797fd4\007'
  printf '\033]4;14;#15968d\007'
  printf '\033]4;15;#d2d8d9\007'
  printf '\033]10;#d2d8d9\007'
  printf '\033]11;#3d3f41\007'
  printf '\033]12;#708284\007'
}
```

### Solarized Dark Higher Contrast

```bash
solarized_dark_higher_contrast() {
  printf '\033]4;0;#002831\007'
  printf '\033]4;1;#d11c24\007'
  printf '\033]4;2;#6cbe6c\007'
  printf '\033]4;3;#a57706\007'
  printf '\033]4;4;#2176c7\007'
  printf '\033]4;5;#c61c6f\007'
  printf '\033]4;6;#259286\007'
  printf '\033]4;7;#eae3cb\007'
  printf '\033]4;8;#006488\007'
  printf '\033]4;9;#f5163b\007'
  printf '\033]4;10;#51ef84\007'
  printf '\033]4;11;#b27e28\007'
  printf '\033]4;12;#178ec8\007'
  printf '\033]4;13;#e24d8e\007'
  printf '\033]4;14;#00b39e\007'
  printf '\033]4;15;#fcf4dc\007'
  printf '\033]10;#9cc2c3\007'
  printf '\033]11;#001e27\007'
  printf '\033]12;#f34b00\007'
}
```

### Solarized Dark Patched

```bash
solarized_dark_patched() {
  printf '\033]4;0;#002831\007'
  printf '\033]4;1;#d11c24\007'
  printf '\033]4;2;#738a05\007'
  printf '\033]4;3;#a57706\007'
  printf '\033]4;4;#2176c7\007'
  printf '\033]4;5;#c61c6f\007'
  printf '\033]4;6;#259286\007'
  printf '\033]4;7;#eae3cb\007'
  printf '\033]4;8;#475b62\007'
  printf '\033]4;9;#bd3613\007'
  printf '\033]4;10;#475b62\007'
  printf '\033]4;11;#536870\007'
  printf '\033]4;12;#708284\007'
  printf '\033]4;13;#5956ba\007'
  printf '\033]4;14;#819090\007'
  printf '\033]4;15;#fcf4dc\007'
  printf '\033]10;#708284\007'
  printf '\033]11;#001e27\007'
  printf '\033]12;#708284\007'
}
```

### Solarized Osaka Night

```bash
solarized_osaka_night() {
  printf '\033]4;0;#15161e\007'
  printf '\033]4;1;#f7768e\007'
  printf '\033]4;2;#9ece6a\007'
  printf '\033]4;3;#e0af68\007'
  printf '\033]4;4;#7aa2f7\007'
  printf '\033]4;5;#bb9af7\007'
  printf '\033]4;6;#7dcfff\007'
  printf '\033]4;7;#a9b1d6\007'
  printf '\033]4;8;#414868\007'
  printf '\033]4;9;#f7768e\007'
  printf '\033]4;10;#9ece6a\007'
  printf '\033]4;11;#e0af68\007'
  printf '\033]4;12;#7aa2f7\007'
  printf '\033]4;13;#bb9af7\007'
  printf '\033]4;14;#7dcfff\007'
  printf '\033]4;15;#c0caf5\007'
  printf '\033]10;#c0caf5\007'
  printf '\033]11;#1a1b26\007'
  printf '\033]12;#c0caf5\007'
}
```

### Sonokai

```bash
sonokai() {
  printf '\033]4;0;#181819\007'
  printf '\033]4;1;#fc5d7c\007'
  printf '\033]4;2;#9ed072\007'
  printf '\033]4;3;#e7c664\007'
  printf '\033]4;4;#76cce0\007'
  printf '\033]4;5;#b39df3\007'
  printf '\033]4;6;#f39660\007'
  printf '\033]4;7;#e2e2e3\007'
  printf '\033]4;8;#7f8490\007'
  printf '\033]4;9;#fc5d7c\007'
  printf '\033]4;10;#9ed072\007'
  printf '\033]4;11;#e7c664\007'
  printf '\033]4;12;#76cce0\007'
  printf '\033]4;13;#b39df3\007'
  printf '\033]4;14;#f39660\007'
  printf '\033]4;15;#e2e2e3\007'
  printf '\033]10;#e2e2e3\007'
  printf '\033]11;#2c2e34\007'
  printf '\033]12;#e2e2e3\007'
}
```

### Spacedust

```bash
spacedust() {
  printf '\033]4;0;#6e5346\007'
  printf '\033]4;1;#e35b00\007'
  printf '\033]4;2;#5cab96\007'
  printf '\033]4;3;#e3cd7b\007'
  printf '\033]4;4;#0f548b\007'
  printf '\033]4;5;#e35b00\007'
  printf '\033]4;6;#06afc7\007'
  printf '\033]4;7;#f0f1ce\007'
  printf '\033]4;8;#684c31\007'
  printf '\033]4;9;#ff8a3a\007'
  printf '\033]4;10;#aecab8\007'
  printf '\033]4;11;#ffc878\007'
  printf '\033]4;12;#67a0ce\007'
  printf '\033]4;13;#ff8a3a\007'
  printf '\033]4;14;#83a7b4\007'
  printf '\033]4;15;#fefff1\007'
  printf '\033]10;#ecf0c1\007'
  printf '\033]11;#0a1e24\007'
  printf '\033]12;#708284\007'
}
```

### Spacegray

```bash
spacegray() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b04b57\007'
  printf '\033]4;2;#87b379\007'
  printf '\033]4;3;#e5c179\007'
  printf '\033]4;4;#7d8fa4\007'
  printf '\033]4;5;#a47996\007'
  printf '\033]4;6;#85a7a5\007'
  printf '\033]4;7;#b3b8c3\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#b04b57\007'
  printf '\033]4;10;#87b379\007'
  printf '\033]4;11;#e5c179\007'
  printf '\033]4;12;#7d8fa4\007'
  printf '\033]4;13;#a47996\007'
  printf '\033]4;14;#85a7a5\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b3b8c3\007'
  printf '\033]11;#20242d\007'
  printf '\033]12;#b3b8c3\007'
}
```

### Spacegray Bright

```bash
spacegray_bright() {
  printf '\033]4;0;#080808\007'
  printf '\033]4;1;#bc5553\007'
  printf '\033]4;2;#a0b56c\007'
  printf '\033]4;3;#f6c987\007'
  printf '\033]4;4;#7baec1\007'
  printf '\033]4;5;#b98aae\007'
  printf '\033]4;6;#85c9b8\007'
  printf '\033]4;7;#d8d8d8\007'
  printf '\033]4;8;#626262\007'
  printf '\033]4;9;#bc5553\007'
  printf '\033]4;10;#a0b56c\007'
  printf '\033]4;11;#f6c987\007'
  printf '\033]4;12;#7baec1\007'
  printf '\033]4;13;#b98aae\007'
  printf '\033]4;14;#85c9b8\007'
  printf '\033]4;15;#f7f7f7\007'
  printf '\033]10;#f3f3f3\007'
  printf '\033]11;#2a2e3a\007'
  printf '\033]12;#c6c6c6\007'
}
```

### Spacegray Eighties

```bash
spacegray_eighties() {
  printf '\033]4;0;#15171c\007'
  printf '\033]4;1;#ec5f67\007'
  printf '\033]4;2;#81a764\007'
  printf '\033]4;3;#fec254\007'
  printf '\033]4;4;#5486c0\007'
  printf '\033]4;5;#bf83c1\007'
  printf '\033]4;6;#57c2c1\007'
  printf '\033]4;7;#efece7\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff6973\007'
  printf '\033]4;10;#93d493\007'
  printf '\033]4;11;#ffd256\007'
  printf '\033]4;12;#4d84d1\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#83e9e4\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#bdbaae\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Spacegray Eighties Dull

```bash
spacegray_eighties_dull() {
  printf '\033]4;0;#15171c\007'
  printf '\033]4;1;#b24a56\007'
  printf '\033]4;2;#92b477\007'
  printf '\033]4;3;#c6735a\007'
  printf '\033]4;4;#7c8fa5\007'
  printf '\033]4;5;#a5789e\007'
  printf '\033]4;6;#80cdcb\007'
  printf '\033]4;7;#b3b8c3\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ec5f67\007'
  printf '\033]4;10;#89e986\007'
  printf '\033]4;11;#fec254\007'
  printf '\033]4;12;#5486c0\007'
  printf '\033]4;13;#bf83c1\007'
  printf '\033]4;14;#58c2c1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c9c6bc\007'
  printf '\033]11;#222222\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Spiderman

```bash
spiderman() {
  printf '\033]4;0;#1b1d1e\007'
  printf '\033]4;1;#e60813\007'
  printf '\033]4;2;#e22928\007'
  printf '\033]4;3;#e24756\007'
  printf '\033]4;4;#2c3fff\007'
  printf '\033]4;5;#2435db\007'
  printf '\033]4;6;#3256ff\007'
  printf '\033]4;7;#fffef6\007'
  printf '\033]4;8;#505354\007'
  printf '\033]4;9;#ff0325\007'
  printf '\033]4;10;#ff3338\007'
  printf '\033]4;11;#fe3a35\007'
  printf '\033]4;12;#1d50ff\007'
  printf '\033]4;13;#747cff\007'
  printf '\033]4;14;#6184ff\007'
  printf '\033]4;15;#fffff9\007'
  printf '\033]10;#e3e3e3\007'
  printf '\033]11;#1b1d1e\007'
  printf '\033]12;#2c3fff\007'
}
```

### Spring

```bash
spring() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff4d83\007'
  printf '\033]4;2;#1f8c3b\007'
  printf '\033]4;3;#1fc95b\007'
  printf '\033]4;4;#1dd3ee\007'
  printf '\033]4;5;#8959a8\007'
  printf '\033]4;6;#3e999f\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#ff0021\007'
  printf '\033]4;10;#1fc231\007'
  printf '\033]4;11;#d5b807\007'
  printf '\033]4;12;#15a9fd\007'
  printf '\033]4;13;#8959a8\007'
  printf '\033]4;14;#3e999f\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#4d4d4c\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#4d4d4c\007'
}
```

### Square

```bash
square() {
  printf '\033]4;0;#050505\007'
  printf '\033]4;1;#e9897c\007'
  printf '\033]4;2;#b6377d\007'
  printf '\033]4;3;#ecebbe\007'
  printf '\033]4;4;#a9cdeb\007'
  printf '\033]4;5;#75507b\007'
  printf '\033]4;6;#c9caec\007'
  printf '\033]4;7;#f2f2f2\007'
  printf '\033]4;8;#474747\007'
  printf '\033]4;9;#f99286\007'
  printf '\033]4;10;#c3f786\007'
  printf '\033]4;11;#fcfbcc\007'
  printf '\033]4;12;#b6defb\007'
  printf '\033]4;13;#ad7fa8\007'
  printf '\033]4;14;#d7d9fc\007'
  printf '\033]4;15;#e2e2e2\007'
  printf '\033]10;#acacab\007'
  printf '\033]11;#1a1a1a\007'
  printf '\033]12;#fcfbcc\007'
}
```

### Squirrelsong Dark

```bash
squirrelsong_dark() {
  printf '\033]4;0;#372920\007'
  printf '\033]4;1;#ba4138\007'
  printf '\033]4;2;#468336\007'
  printf '\033]4;3;#d4b139\007'
  printf '\033]4;4;#4395c6\007'
  printf '\033]4;5;#855fb8\007'
  printf '\033]4;6;#2f9794\007'
  printf '\033]4;7;#d3b9a2\007'
  printf '\033]4;8;#704f39\007'
  printf '\033]4;9;#df4d43\007'
  printf '\033]4;10;#659a4c\007'
  printf '\033]4;11;#e8c23f\007'
  printf '\033]4;12;#4ca4db\007'
  printf '\033]4;13;#9d70da\007'
  printf '\033]4;14;#60aca9\007'
  printf '\033]4;15;#f2d4bb\007'
  printf '\033]10;#b19b89\007'
  printf '\033]11;#372920\007'
  printf '\033]12;#b19b89\007'
}
```

### Srcery

```bash
srcery() {
  printf '\033]4;0;#1c1b19\007'
  printf '\033]4;1;#ef2f27\007'
  printf '\033]4;2;#519f50\007'
  printf '\033]4;3;#fbb829\007'
  printf '\033]4;4;#2c78bf\007'
  printf '\033]4;5;#e02c6d\007'
  printf '\033]4;6;#0aaeb3\007'
  printf '\033]4;7;#baa67f\007'
  printf '\033]4;8;#918175\007'
  printf '\033]4;9;#f75341\007'
  printf '\033]4;10;#98bc37\007'
  printf '\033]4;11;#fed06e\007'
  printf '\033]4;12;#68a8e4\007'
  printf '\033]4;13;#ff5c8f\007'
  printf '\033]4;14;#2be4d0\007'
  printf '\033]4;15;#fce8c3\007'
  printf '\033]10;#fce8c3\007'
  printf '\033]11;#1c1b19\007'
  printf '\033]12;#fbb829\007'
}
```

### Starlight

```bash
starlight() {
  printf '\033]4;0;#242424\007'
  printf '\033]4;1;#f62b5a\007'
  printf '\033]4;2;#47b413\007'
  printf '\033]4;3;#e3c401\007'
  printf '\033]4;4;#24acd4\007'
  printf '\033]4;5;#f2affd\007'
  printf '\033]4;6;#13c299\007'
  printf '\033]4;7;#e6e6e6\007'
  printf '\033]4;8;#616161\007'
  printf '\033]4;9;#ff4d51\007'
  printf '\033]4;10;#35d450\007'
  printf '\033]4;11;#e9e836\007'
  printf '\033]4;12;#5dc5f8\007'
  printf '\033]4;13;#feabf2\007'
  printf '\033]4;14;#24dfc4\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#242424\007'
  printf '\033]12;#ffffff\007'
}
```

### Sublette

```bash
sublette() {
  printf '\033]4;0;#253045\007'
  printf '\033]4;1;#ee5577\007'
  printf '\033]4;2;#55ee77\007'
  printf '\033]4;3;#ffdd88\007'
  printf '\033]4;4;#5588ff\007'
  printf '\033]4;5;#ff77cc\007'
  printf '\033]4;6;#44eeee\007'
  printf '\033]4;7;#f5f5da\007'
  printf '\033]4;8;#405570\007'
  printf '\033]4;9;#ee6655\007'
  printf '\033]4;10;#99ee77\007'
  printf '\033]4;11;#ffff77\007'
  printf '\033]4;12;#77bbff\007'
  printf '\033]4;13;#aa88ff\007'
  printf '\033]4;14;#55ffbb\007'
  printf '\033]4;15;#ffffee\007'
  printf '\033]10;#ccced0\007'
  printf '\033]11;#202535\007'
  printf '\033]12;#ccced0\007'
}
```

### Subliminal

```bash
subliminal() {
  printf '\033]4;0;#7f7f7f\007'
  printf '\033]4;1;#e15a60\007'
  printf '\033]4;2;#a9cfa4\007'
  printf '\033]4;3;#ffe2a9\007'
  printf '\033]4;4;#6699cc\007'
  printf '\033]4;5;#f1a5ab\007'
  printf '\033]4;6;#5fb3b3\007'
  printf '\033]4;7;#d4d4d4\007'
  printf '\033]4;8;#7f7f7f\007'
  printf '\033]4;9;#e15a60\007'
  printf '\033]4;10;#a9cfa4\007'
  printf '\033]4;11;#ffe2a9\007'
  printf '\033]4;12;#6699cc\007'
  printf '\033]4;13;#f1a5ab\007'
  printf '\033]4;14;#5fb3b3\007'
  printf '\033]4;15;#d4d4d4\007'
  printf '\033]10;#d4d4d4\007'
  printf '\033]11;#282c35\007'
  printf '\033]12;#c7c7c7\007'
}
```

### Sugarplum

```bash
sugarplum() {
  printf '\033]4;0;#111147\007'
  printf '\033]4;1;#5ca8dc\007'
  printf '\033]4;2;#53b397\007'
  printf '\033]4;3;#249a84\007'
  printf '\033]4;4;#db7ddd\007'
  printf '\033]4;5;#d0beee\007'
  printf '\033]4;6;#f9f3f9\007'
  printf '\033]4;7;#a175d4\007'
  printf '\033]4;8;#44447a\007'
  printf '\033]4;9;#5cb5dc\007'
  printf '\033]4;10;#52deb5\007'
  printf '\033]4;11;#01f5c7\007'
  printf '\033]4;12;#fa5dfd\007'
  printf '\033]4;13;#c6a5fd\007'
  printf '\033]4;14;#ffffff\007'
  printf '\033]4;15;#b577fd\007'
  printf '\033]10;#db7ddd\007'
  printf '\033]11;#111147\007'
  printf '\033]12;#53b397\007'
}
```

### Sundried

```bash
sundried() {
  printf '\033]4;0;#302b2a\007'
  printf '\033]4;1;#a7463d\007'
  printf '\033]4;2;#587744\007'
  printf '\033]4;3;#9d602a\007'
  printf '\033]4;4;#485b98\007'
  printf '\033]4;5;#864651\007'
  printf '\033]4;6;#9c814f\007'
  printf '\033]4;7;#c9c9c9\007'
  printf '\033]4;8;#4d4e48\007'
  printf '\033]4;9;#aa000c\007'
  printf '\033]4;10;#128c21\007'
  printf '\033]4;11;#fc6a21\007'
  printf '\033]4;12;#7999f7\007'
  printf '\033]4;13;#fd8aa1\007'
  printf '\033]4;14;#fad484\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c9c9c9\007'
  printf '\033]11;#1a1818\007'
  printf '\033]12;#ffffff\007'
}
```

### Sunset Drive

```bash
sunset_drive() {
  printf '\033]4;0;#0a0a13\007'
  printf '\033]4;1;#ff0063\007'
  printf '\033]4;2;#00f992\007'
  printf '\033]4;3;#ffe900\007'
  printf '\033]4;4;#00a4ff\007'
  printf '\033]4;5;#ff57fd\007'
  printf '\033]4;6;#00ffed\007'
  printf '\033]4;7;#ededff\007'
  printf '\033]4;8;#3e3e4b\007'
  printf '\033]4;9;#ff948b\007'
  printf '\033]4;10;#00fcb9\007'
  printf '\033]4;11;#ffff68\007'
  printf '\033]4;12;#3ea0ff\007'
  printf '\033]4;13;#ff93ff\007'
  printf '\033]4;14;#38ffff\007'
  printf '\033]4;15;#f8f8ff\007'
  printf '\033]10;#ededfe\007'
  printf '\033]11;#0f0f1a\007'
  printf '\033]12;#ededfe\007'
}
```

### Symfonic

```bash
symfonic() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#dc322f\007'
  printf '\033]4;2;#56db3a\007'
  printf '\033]4;3;#ff8400\007'
  printf '\033]4;4;#0084d4\007'
  printf '\033]4;5;#b729d9\007'
  printf '\033]4;6;#ccccff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#414347\007'
  printf '\033]4;9;#dc322f\007'
  printf '\033]4;10;#56db3a\007'
  printf '\033]4;11;#ff8400\007'
  printf '\033]4;12;#0084d4\007'
  printf '\033]4;13;#b729d9\007'
  printf '\033]4;14;#ccccff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#dc322f\007'
}
```

### Synthwave

```bash
synthwave() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f6188f\007'
  printf '\033]4;2;#1ebb2b\007'
  printf '\033]4;3;#fdf834\007'
  printf '\033]4;4;#2186ec\007'
  printf '\033]4;5;#f85a21\007'
  printf '\033]4;6;#12c3e2\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#7f7094\007'
  printf '\033]4;9;#f841a0\007'
  printf '\033]4;10;#25c141\007'
  printf '\033]4;11;#fdf454\007'
  printf '\033]4;12;#2f9ded\007'
  printf '\033]4;13;#f97137\007'
  printf '\033]4;14;#19cde6\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dad9c7\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#19cde6\007'
}
```

### Synthwave Alpha

```bash
synthwave_alpha() {
  printf '\033]4;0;#241b30\007'
  printf '\033]4;1;#e60a70\007'
  printf '\033]4;2;#00986c\007'
  printf '\033]4;3;#adad3e\007'
  printf '\033]4;4;#6e29ad\007'
  printf '\033]4;5;#b300ad\007'
  printf '\033]4;6;#00b0b1\007'
  printf '\033]4;7;#b9b1bc\007'
  printf '\033]4;8;#7f7094\007'
  printf '\033]4;9;#e60a70\007'
  printf '\033]4;10;#0ae4a4\007'
  printf '\033]4;11;#f9f972\007'
  printf '\033]4;12;#aa54f9\007'
  printf '\033]4;13;#ff00f6\007'
  printf '\033]4;14;#00fbfd\007'
  printf '\033]4;15;#f2f2e3\007'
  printf '\033]10;#f2f2e3\007'
  printf '\033]11;#241b30\007'
  printf '\033]12;#f2f2e3\007'
}
```

### Synthwave Everything

```bash
synthwave_everything() {
  printf '\033]4;0;#fefefe\007'
  printf '\033]4;1;#f97e72\007'
  printf '\033]4;2;#72f1b8\007'
  printf '\033]4;3;#fede5d\007'
  printf '\033]4;4;#6d77b3\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#f772e0\007'
  printf '\033]4;7;#fefefe\007'
  printf '\033]4;8;#fefefe\007'
  printf '\033]4;9;#f88414\007'
  printf '\033]4;10;#72f1b8\007'
  printf '\033]4;11;#fff951\007'
  printf '\033]4;12;#36f9f6\007'
  printf '\033]4;13;#e1acff\007'
  printf '\033]4;14;#f92aad\007'
  printf '\033]4;15;#fefefe\007'
  printf '\033]10;#f0eff1\007'
  printf '\033]11;#2a2139\007'
  printf '\033]12;#72f1b8\007'
}
```

### Tango Adapted

```bash
tango_adapted() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff0000\007'
  printf '\033]4;2;#59d600\007'
  printf '\033]4;3;#e3be00\007'
  printf '\033]4;4;#00a2ff\007'
  printf '\033]4;5;#c17ecc\007'
  printf '\033]4;6;#00d0d6\007'
  printf '\033]4;7;#c0c5bb\007'
  printf '\033]4;8;#8f928b\007'
  printf '\033]4;9;#ff0013\007'
  printf '\033]4;10;#6dd900\007'
  printf '\033]4;11;#ccbe00\007'
  printf '\033]4;12;#88c9ff\007'
  printf '\033]4;13;#e9a7e1\007'
  printf '\033]4;14;#00d8d9\007'
  printf '\033]4;15;#f6f6f4\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Tango Half Adapted

```bash
tango_half_adapted() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff0000\007'
  printf '\033]4;2;#4cc300\007'
  printf '\033]4;3;#e2c000\007'
  printf '\033]4;4;#008ef6\007'
  printf '\033]4;5;#a96cb3\007'
  printf '\033]4;6;#00bdc3\007'
  printf '\033]4;7;#babfb5\007'
  printf '\033]4;8;#797d76\007'
  printf '\033]4;9;#ff0013\007'
  printf '\033]4;10;#70dc00\007'
  printf '\033]4;11;#d9c600\007'
  printf '\033]4;12;#76bfff\007'
  printf '\033]4;13;#d898d1\007'
  printf '\033]4;14;#00d0d4\007'
  printf '\033]4;15;#f4f4f2\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Tearout

```bash
tearout() {
  printf '\033]4;0;#685742\007'
  printf '\033]4;1;#cc967b\007'
  printf '\033]4;2;#97976d\007'
  printf '\033]4;3;#6c9861\007'
  printf '\033]4;4;#b5955e\007'
  printf '\033]4;5;#c9a554\007'
  printf '\033]4;6;#d7c483\007'
  printf '\033]4;7;#b5955e\007'
  printf '\033]4;8;#75644f\007'
  printf '\033]4;9;#cc967b\007'
  printf '\033]4;10;#97976d\007'
  printf '\033]4;11;#6c9861\007'
  printf '\033]4;12;#b5955e\007'
  printf '\033]4;13;#c9a554\007'
  printf '\033]4;14;#d7c483\007'
  printf '\033]4;15;#b5955e\007'
  printf '\033]10;#f4d2ae\007'
  printf '\033]11;#34392d\007'
  printf '\033]12;#d7c483\007'
}
```

### Teerb

```bash
teerb() {
  printf '\033]4;0;#1c1c1c\007'
  printf '\033]4;1;#d68686\007'
  printf '\033]4;2;#aed686\007'
  printf '\033]4;3;#d7af87\007'
  printf '\033]4;4;#86aed6\007'
  printf '\033]4;5;#d6aed6\007'
  printf '\033]4;6;#8adbb4\007'
  printf '\033]4;7;#d0d0d0\007'
  printf '\033]4;8;#4f4f4f\007'
  printf '\033]4;9;#d68686\007'
  printf '\033]4;10;#aed686\007'
  printf '\033]4;11;#e4c9af\007'
  printf '\033]4;12;#86aed6\007'
  printf '\033]4;13;#d6aed6\007'
  printf '\033]4;14;#b1e7dd\007'
  printf '\033]4;15;#efefef\007'
  printf '\033]10;#d0d0d0\007'
  printf '\033]11;#262626\007'
  printf '\033]12;#e4c9af\007'
}
```

### Terafox

```bash
terafox() {
  printf '\033]4;0;#2f3239\007'
  printf '\033]4;1;#e85c51\007'
  printf '\033]4;2;#7aa4a1\007'
  printf '\033]4;3;#fda47f\007'
  printf '\033]4;4;#5a93aa\007'
  printf '\033]4;5;#ad5c7c\007'
  printf '\033]4;6;#a1cdd8\007'
  printf '\033]4;7;#ebebeb\007'
  printf '\033]4;8;#4e5157\007'
  printf '\033]4;9;#eb746b\007'
  printf '\033]4;10;#8eb2af\007'
  printf '\033]4;11;#fdb292\007'
  printf '\033]4;12;#73a3b7\007'
  printf '\033]4;13;#b97490\007'
  printf '\033]4;14;#afd4de\007'
  printf '\033]4;15;#eeeeee\007'
  printf '\033]10;#e6eaea\007'
  printf '\033]11;#152528\007'
  printf '\033]12;#e6eaea\007'
}
```

### Terminal Basic

```bash
terminal_basic() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#990000\007'
  printf '\033]4;2;#00a600\007'
  printf '\033]4;3;#999900\007'
  printf '\033]4;4;#0000b2\007'
  printf '\033]4;5;#b200b2\007'
  printf '\033]4;6;#00a6b2\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#666666\007'
  printf '\033]4;9;#e50000\007'
  printf '\033]4;10;#00d900\007'
  printf '\033]4;11;#bfbf00\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#e500e5\007'
  printf '\033]4;14;#00d8d8\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#7f7f7f\007'
}
```

### Terminal Basic Dark

```bash
terminal_basic_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c65339\007'
  printf '\033]4;2;#6ac44b\007'
  printf '\033]4;3;#b8b74a\007'
  printf '\033]4;4;#6444ed\007'
  printf '\033]4;5;#d357db\007'
  printf '\033]4;6;#69c1cf\007'
  printf '\033]4;7;#d1d1d1\007'
  printf '\033]4;8;#909090\007'
  printf '\033]4;9;#eb5a3a\007'
  printf '\033]4;10;#77ea51\007'
  printf '\033]4;11;#efef53\007'
  printf '\033]4;12;#d09af9\007'
  printf '\033]4;13;#eb5af7\007'
  printf '\033]4;14;#78f1f2\007'
  printf '\033]4;15;#ededed\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1d1e1d\007'
  printf '\033]12;#9d9d9d\007'
}
```

### Thayer Bright

```bash
thayer_bright() {
  printf '\033]4;0;#1b1d1e\007'
  printf '\033]4;1;#f92672\007'
  printf '\033]4;2;#4df840\007'
  printf '\033]4;3;#f4fd22\007'
  printf '\033]4;4;#2757d6\007'
  printf '\033]4;5;#8c54fe\007'
  printf '\033]4;6;#38c8b5\007'
  printf '\033]4;7;#ccccc6\007'
  printf '\033]4;8;#505354\007'
  printf '\033]4;9;#ff5995\007'
  printf '\033]4;10;#b6e354\007'
  printf '\033]4;11;#feed6c\007'
  printf '\033]4;12;#3f78ff\007'
  printf '\033]4;13;#9e6ffe\007'
  printf '\033]4;14;#23cfd5\007'
  printf '\033]4;15;#f8f8f2\007'
  printf '\033]10;#f8f8f8\007'
  printf '\033]11;#1b1d1e\007'
  printf '\033]12;#fc971f\007'
}
```

### The Hulk

```bash
the_hulk() {
  printf '\033]4;0;#1b1d1e\007'
  printf '\033]4;1;#269d1b\007'
  printf '\033]4;2;#13ce30\007'
  printf '\033]4;3;#63e457\007'
  printf '\033]4;4;#2525f5\007'
  printf '\033]4;5;#712c81\007'
  printf '\033]4;6;#378ca9\007'
  printf '\033]4;7;#d9d8d1\007'
  printf '\033]4;8;#505354\007'
  printf '\033]4;9;#8dff2a\007'
  printf '\033]4;10;#48ff77\007'
  printf '\033]4;11;#3afe16\007'
  printf '\033]4;12;#506b95\007'
  printf '\033]4;13;#72589d\007'
  printf '\033]4;14;#4085a6\007'
  printf '\033]4;15;#e5e6e1\007'
  printf '\033]10;#b5b5b5\007'
  printf '\033]11;#1b1d1e\007'
  printf '\033]12;#16b61b\007'
}
```

### Tinacious Design Dark

```bash
tinacious_design_dark() {
  printf '\033]4;0;#1d1d26\007'
  printf '\033]4;1;#ff3399\007'
  printf '\033]4;2;#00d364\007'
  printf '\033]4;3;#ffcc66\007'
  printf '\033]4;4;#00cbff\007'
  printf '\033]4;5;#cc66ff\007'
  printf '\033]4;6;#00ceca\007'
  printf '\033]4;7;#cbcbf0\007'
  printf '\033]4;8;#636667\007'
  printf '\033]4;9;#ff2f92\007'
  printf '\033]4;10;#00d364\007'
  printf '\033]4;11;#ffd479\007'
  printf '\033]4;12;#00cbff\007'
  printf '\033]4;13;#d783ff\007'
  printf '\033]4;14;#00d5d4\007'
  printf '\033]4;15;#d5d6f3\007'
  printf '\033]10;#cbcbf0\007'
  printf '\033]11;#1d1d26\007'
  printf '\033]12;#cbcbf0\007'
}
```

### Tinacious Design Light

```bash
tinacious_design_light() {
  printf '\033]4;0;#1d1d26\007'
  printf '\033]4;1;#ff3399\007'
  printf '\033]4;2;#00d364\007'
  printf '\033]4;3;#e5b24d\007'
  printf '\033]4;4;#00cbff\007'
  printf '\033]4;5;#cc66ff\007'
  printf '\033]4;6;#00ceca\007'
  printf '\033]4;7;#b1b1d6\007'
  printf '\033]4;8;#636667\007'
  printf '\033]4;9;#ff2f92\007'
  printf '\033]4;10;#00d364\007'
  printf '\033]4;11;#d9ae53\007'
  printf '\033]4;12;#00cbff\007'
  printf '\033]4;13;#d783ff\007'
  printf '\033]4;14;#00c8c7\007'
  printf '\033]4;15;#d5d6f3\007'
  printf '\033]10;#1d1d26\007'
  printf '\033]11;#f8f8ff\007'
  printf '\033]12;#b1b1d6\007'
}
```

### TokyoNight

```bash
tokyonight() {
  printf '\033]4;0;#15161e\007'
  printf '\033]4;1;#f7768e\007'
  printf '\033]4;2;#9ece6a\007'
  printf '\033]4;3;#e0af68\007'
  printf '\033]4;4;#7aa2f7\007'
  printf '\033]4;5;#bb9af7\007'
  printf '\033]4;6;#7dcfff\007'
  printf '\033]4;7;#a9b1d6\007'
  printf '\033]4;8;#414868\007'
  printf '\033]4;9;#f7768e\007'
  printf '\033]4;10;#9ece6a\007'
  printf '\033]4;11;#e0af68\007'
  printf '\033]4;12;#7aa2f7\007'
  printf '\033]4;13;#bb9af7\007'
  printf '\033]4;14;#7dcfff\007'
  printf '\033]4;15;#c0caf5\007'
  printf '\033]10;#c0caf5\007'
  printf '\033]11;#1a1b26\007'
  printf '\033]12;#c0caf5\007'
}
```

### TokyoNight Day

```bash
tokyonight_day() {
  printf '\033]4;0;#e9e9ed\007'
  printf '\033]4;1;#f52a65\007'
  printf '\033]4;2;#587539\007'
  printf '\033]4;3;#8c6c3e\007'
  printf '\033]4;4;#2e7de9\007'
  printf '\033]4;5;#9854f1\007'
  printf '\033]4;6;#007197\007'
  printf '\033]4;7;#6172b0\007'
  printf '\033]4;8;#a1a6c5\007'
  printf '\033]4;9;#f52a65\007'
  printf '\033]4;10;#587539\007'
  printf '\033]4;11;#8c6c3e\007'
  printf '\033]4;12;#2e7de9\007'
  printf '\033]4;13;#9854f1\007'
  printf '\033]4;14;#007197\007'
  printf '\033]4;15;#3760bf\007'
  printf '\033]10;#3760bf\007'
  printf '\033]11;#e1e2e7\007'
  printf '\033]12;#3760bf\007'
}
```

### TokyoNight Moon

```bash
tokyonight_moon() {
  printf '\033]4;0;#1b1d2b\007'
  printf '\033]4;1;#ff757f\007'
  printf '\033]4;2;#c3e88d\007'
  printf '\033]4;3;#ffc777\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c099ff\007'
  printf '\033]4;6;#86e1fc\007'
  printf '\033]4;7;#828bb8\007'
  printf '\033]4;8;#444a73\007'
  printf '\033]4;9;#ff757f\007'
  printf '\033]4;10;#c3e88d\007'
  printf '\033]4;11;#ffc777\007'
  printf '\033]4;12;#82aaff\007'
  printf '\033]4;13;#c099ff\007'
  printf '\033]4;14;#86e1fc\007'
  printf '\033]4;15;#c8d3f5\007'
  printf '\033]10;#c8d3f5\007'
  printf '\033]11;#222436\007'
  printf '\033]12;#c8d3f5\007'
}
```

### TokyoNight Night

```bash
tokyonight_night() {
  printf '\033]4;0;#15161e\007'
  printf '\033]4;1;#f7768e\007'
  printf '\033]4;2;#9ece6a\007'
  printf '\033]4;3;#e0af68\007'
  printf '\033]4;4;#7aa2f7\007'
  printf '\033]4;5;#bb9af7\007'
  printf '\033]4;6;#7dcfff\007'
  printf '\033]4;7;#a9b1d6\007'
  printf '\033]4;8;#414868\007'
  printf '\033]4;9;#f7768e\007'
  printf '\033]4;10;#9ece6a\007'
  printf '\033]4;11;#e0af68\007'
  printf '\033]4;12;#7aa2f7\007'
  printf '\033]4;13;#bb9af7\007'
  printf '\033]4;14;#7dcfff\007'
  printf '\033]4;15;#c0caf5\007'
  printf '\033]10;#c0caf5\007'
  printf '\033]11;#1a1b26\007'
  printf '\033]12;#c0caf5\007'
}
```

### TokyoNight Storm

```bash
tokyonight_storm() {
  printf '\033]4;0;#1d202f\007'
  printf '\033]4;1;#f7768e\007'
  printf '\033]4;2;#9ece6a\007'
  printf '\033]4;3;#e0af68\007'
  printf '\033]4;4;#7aa2f7\007'
  printf '\033]4;5;#bb9af7\007'
  printf '\033]4;6;#7dcfff\007'
  printf '\033]4;7;#a9b1d6\007'
  printf '\033]4;8;#4e5575\007'
  printf '\033]4;9;#f7768e\007'
  printf '\033]4;10;#9ece6a\007'
  printf '\033]4;11;#e0af68\007'
  printf '\033]4;12;#7aa2f7\007'
  printf '\033]4;13;#bb9af7\007'
  printf '\033]4;14;#7dcfff\007'
  printf '\033]4;15;#c0caf5\007'
  printf '\033]10;#c0caf5\007'
  printf '\033]11;#24283b\007'
  printf '\033]12;#c0caf5\007'
}
```

### Tomorrow

```bash
tomorrow() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#c82829\007'
  printf '\033]4;2;#718c00\007'
  printf '\033]4;3;#eab700\007'
  printf '\033]4;4;#4271ae\007'
  printf '\033]4;5;#8959a8\007'
  printf '\033]4;6;#3e999f\007'
  printf '\033]4;7;#bfbfbf\007'
  printf '\033]4;8;#000000\007'
  printf '\033]4;9;#c82829\007'
  printf '\033]4;10;#718c00\007'
  printf '\033]4;11;#eab700\007'
  printf '\033]4;12;#4271ae\007'
  printf '\033]4;13;#8959a8\007'
  printf '\033]4;14;#3e999f\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#4d4d4c\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#4d4d4c\007'
}
```

### Tomorrow Night

```bash
tomorrow_night() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc6666\007'
  printf '\033]4;2;#b5bd68\007'
  printf '\033]4;3;#f0c674\007'
  printf '\033]4;4;#81a2be\007'
  printf '\033]4;5;#b294bb\007'
  printf '\033]4;6;#8abeb7\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#cc6666\007'
  printf '\033]4;10;#b5bd68\007'
  printf '\033]4;11;#f0c674\007'
  printf '\033]4;12;#81a2be\007'
  printf '\033]4;13;#b294bb\007'
  printf '\033]4;14;#8abeb7\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#c5c8c6\007'
  printf '\033]11;#1d1f21\007'
  printf '\033]12;#c5c8c6\007'
}
```

### Tomorrow Night Blue

```bash
tomorrow_night_blue() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff9da4\007'
  printf '\033]4;2;#d1f1a9\007'
  printf '\033]4;3;#ffeead\007'
  printf '\033]4;4;#bbdaff\007'
  printf '\033]4;5;#ebbbff\007'
  printf '\033]4;6;#99ffff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#4c4c4c\007'
  printf '\033]4;9;#ff9da4\007'
  printf '\033]4;10;#d1f1a9\007'
  printf '\033]4;11;#ffeead\007'
  printf '\033]4;12;#bbdaff\007'
  printf '\033]4;13;#ebbbff\007'
  printf '\033]4;14;#99ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#002451\007'
  printf '\033]12;#ffffff\007'
}
```

### Tomorrow Night Bright

```bash
tomorrow_night_bright() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#d54e53\007'
  printf '\033]4;2;#b9ca4a\007'
  printf '\033]4;3;#e7c547\007'
  printf '\033]4;4;#7aa6da\007'
  printf '\033]4;5;#c397d8\007'
  printf '\033]4;6;#70c0b1\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#d54e53\007'
  printf '\033]4;10;#b9ca4a\007'
  printf '\033]4;11;#e7c547\007'
  printf '\033]4;12;#7aa6da\007'
  printf '\033]4;13;#c397d8\007'
  printf '\033]4;14;#70c0b1\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#eaeaea\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#eaeaea\007'
}
```

### Tomorrow Night Burns

```bash
tomorrow_night_burns() {
  printf '\033]4;0;#252525\007'
  printf '\033]4;1;#832e31\007'
  printf '\033]4;2;#a63c40\007'
  printf '\033]4;3;#d3494e\007'
  printf '\033]4;4;#fc595f\007'
  printf '\033]4;5;#df9395\007'
  printf '\033]4;6;#ba8586\007'
  printf '\033]4;7;#f5f5f5\007'
  printf '\033]4;8;#5d6f71\007'
  printf '\033]4;9;#832e31\007'
  printf '\033]4;10;#a63c40\007'
  printf '\033]4;11;#d2494e\007'
  printf '\033]4;12;#fc595f\007'
  printf '\033]4;13;#df9395\007'
  printf '\033]4;14;#ba8586\007'
  printf '\033]4;15;#f5f5f5\007'
  printf '\033]10;#a1b0b8\007'
  printf '\033]11;#151515\007'
  printf '\033]12;#ff443e\007'
}
```

### Tomorrow Night Eighties

```bash
tomorrow_night_eighties() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f2777a\007'
  printf '\033]4;2;#99cc99\007'
  printf '\033]4;3;#ffcc66\007'
  printf '\033]4;4;#6699cc\007'
  printf '\033]4;5;#cc99cc\007'
  printf '\033]4;6;#66cccc\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#595959\007'
  printf '\033]4;9;#f2777a\007'
  printf '\033]4;10;#99cc99\007'
  printf '\033]4;11;#ffcc66\007'
  printf '\033]4;12;#6699cc\007'
  printf '\033]4;13;#cc99cc\007'
  printf '\033]4;14;#66cccc\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#cccccc\007'
  printf '\033]11;#2d2d2d\007'
  printf '\033]12;#cccccc\007'
}
```

### Toy Chest

```bash
toy_chest() {
  printf '\033]4;0;#2c3f58\007'
  printf '\033]4;1;#be2d26\007'
  printf '\033]4;2;#1a9172\007'
  printf '\033]4;3;#db8e27\007'
  printf '\033]4;4;#325d96\007'
  printf '\033]4;5;#8a5edc\007'
  printf '\033]4;6;#35a08f\007'
  printf '\033]4;7;#23d183\007'
  printf '\033]4;8;#336889\007'
  printf '\033]4;9;#dd5944\007'
  printf '\033]4;10;#31d07b\007'
  printf '\033]4;11;#e7d84b\007'
  printf '\033]4;12;#34a6da\007'
  printf '\033]4;13;#ae6bdc\007'
  printf '\033]4;14;#42c3ae\007'
  printf '\033]4;15;#d5d5d5\007'
  printf '\033]10;#31d07b\007'
  printf '\033]11;#24364b\007'
  printf '\033]12;#d5d5d5\007'
}
```

### traffic

```bash
traffic() {
  printf '\033]4;0;#282d31\007'
  printf '\033]4;1;#934e46\007'
  printf '\033]4;2;#637268\007'
  printf '\033]4;3;#c79e84\007'
  printf '\033]4;4;#515e67\007'
  printf '\033]4;5;#715f5e\007'
  printf '\033]4;6;#5c6f7d\007'
  printf '\033]4;7;#cfb9a8\007'
  printf '\033]4;8;#4e575e\007'
  printf '\033]4;9;#934e46\007'
  printf '\033]4;10;#637270\007'
  printf '\033]4;11;#c79e84\007'
  printf '\033]4;12;#515e67\007'
  printf '\033]4;13;#715f5e\007'
  printf '\033]4;14;#5c6f7d\007'
  printf '\033]4;15;#ddcec2\007'
  printf '\033]10;#cfb9a8\007'
  printf '\033]11;#272c30\007'
  printf '\033]12;#cfb9a8\007'
}
```

### Treehouse

```bash
treehouse() {
  printf '\033]4;0;#321300\007'
  printf '\033]4;1;#b2270e\007'
  printf '\033]4;2;#44a900\007'
  printf '\033]4;3;#aa820c\007'
  printf '\033]4;4;#58859a\007'
  printf '\033]4;5;#97363d\007'
  printf '\033]4;6;#b25a1e\007'
  printf '\033]4;7;#786b53\007'
  printf '\033]4;8;#504333\007'
  printf '\033]4;9;#ed5d20\007'
  printf '\033]4;10;#55f238\007'
  printf '\033]4;11;#f2b732\007'
  printf '\033]4;12;#85cfed\007'
  printf '\033]4;13;#e14c5a\007'
  printf '\033]4;14;#f07d14\007'
  printf '\033]4;15;#ffc800\007'
  printf '\033]10;#786b53\007'
  printf '\033]11;#191919\007'
  printf '\033]12;#fac814\007'
}
```

### Twilight

```bash
twilight() {
  printf '\033]4;0;#141414\007'
  printf '\033]4;1;#c06d44\007'
  printf '\033]4;2;#afb97a\007'
  printf '\033]4;3;#c2a86c\007'
  printf '\033]4;4;#44474a\007'
  printf '\033]4;5;#b4be7c\007'
  printf '\033]4;6;#778385\007'
  printf '\033]4;7;#ffffd4\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#de7c4c\007'
  printf '\033]4;10;#ccd88c\007'
  printf '\033]4;11;#e2c47e\007'
  printf '\033]4;12;#5a5e62\007'
  printf '\033]4;13;#d0dc8e\007'
  printf '\033]4;14;#8a989b\007'
  printf '\033]4;15;#ffffd4\007'
  printf '\033]10;#ffffd4\007'
  printf '\033]11;#141414\007'
  printf '\033]12;#ffffff\007'
}
```

### Ubuntu

```bash
ubuntu() {
  printf '\033]4;0;#2e3436\007'
  printf '\033]4;1;#cc0000\007'
  printf '\033]4;2;#4e9a06\007'
  printf '\033]4;3;#c4a000\007'
  printf '\033]4;4;#3465a4\007'
  printf '\033]4;5;#75507b\007'
  printf '\033]4;6;#06989a\007'
  printf '\033]4;7;#d3d7cf\007'
  printf '\033]4;8;#555753\007'
  printf '\033]4;9;#ef2929\007'
  printf '\033]4;10;#8ae234\007'
  printf '\033]4;11;#fce94f\007'
  printf '\033]4;12;#729fcf\007'
  printf '\033]4;13;#ad7fa8\007'
  printf '\033]4;14;#34e2e2\007'
  printf '\033]4;15;#eeeeec\007'
  printf '\033]10;#eeeeec\007'
  printf '\033]11;#300a24\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Ultra Dark

```bash
ultra_dark() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#f07178\007'
  printf '\033]4;2;#c3e88d\007'
  printf '\033]4;3;#ffcb6b\007'
  printf '\033]4;4;#82aaff\007'
  printf '\033]4;5;#c792ea\007'
  printf '\033]4;6;#89ddff\007'
  printf '\033]4;7;#cccccc\007'
  printf '\033]4;8;#404040\007'
  printf '\033]4;9;#f6a9ae\007'
  printf '\033]4;10;#dbf1ba\007'
  printf '\033]4;11;#ffdfa6\007'
  printf '\033]4;12;#b4ccff\007'
  printf '\033]4;13;#ddbdf2\007'
  printf '\033]4;14;#b8eaff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#fefefe\007'
}
```

### Ultra Violent

```bash
ultra_violent() {
  printf '\033]4;0;#242728\007'
  printf '\033]4;1;#ff0090\007'
  printf '\033]4;2;#b6ff00\007'
  printf '\033]4;3;#fff727\007'
  printf '\033]4;4;#47e0fb\007'
  printf '\033]4;5;#d731ff\007'
  printf '\033]4;6;#0effbb\007'
  printf '\033]4;7;#e1e1e1\007'
  printf '\033]4;8;#636667\007'
  printf '\033]4;9;#fb58b4\007'
  printf '\033]4;10;#deff8c\007'
  printf '\033]4;11;#ebe087\007'
  printf '\033]4;12;#7fecff\007'
  printf '\033]4;13;#e681ff\007'
  printf '\033]4;14;#69fcd3\007'
  printf '\033]4;15;#f9f9f5\007'
  printf '\033]10;#c1c1c1\007'
  printf '\033]11;#242728\007'
  printf '\033]12;#c1c1c1\007'
}
```

### Under The Sea

```bash
under_the_sea() {
  printf '\033]4;0;#022026\007'
  printf '\033]4;1;#b2302d\007'
  printf '\033]4;2;#00a941\007'
  printf '\033]4;3;#59819c\007'
  printf '\033]4;4;#459a86\007'
  printf '\033]4;5;#00599d\007'
  printf '\033]4;6;#5d7e19\007'
  printf '\033]4;7;#405555\007'
  printf '\033]4;8;#384451\007'
  printf '\033]4;9;#ff4242\007'
  printf '\033]4;10;#2aea5e\007'
  printf '\033]4;11;#8ed4fd\007'
  printf '\033]4;12;#61d5ba\007'
  printf '\033]4;13;#1298ff\007'
  printf '\033]4;14;#98d028\007'
  printf '\033]4;15;#58fbd6\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#011116\007'
  printf '\033]12;#4afcd6\007'
}
```

### Unikitty

```bash
unikitty() {
  printf '\033]4;0;#0c0c0c\007'
  printf '\033]4;1;#a80f20\007'
  printf '\033]4;2;#c7ff98\007'
  printf '\033]4;3;#fff964\007'
  printf '\033]4;4;#145fcd\007'
  printf '\033]4;5;#ffe9ff\007'
  printf '\033]4;6;#9effef\007'
  printf '\033]4;7;#fcf1fb\007'
  printf '\033]4;8;#434343\007'
  printf '\033]4;9;#d91329\007'
  printf '\033]4;10;#d3ffaf\007'
  printf '\033]4;11;#ffef50\007'
  printf '\033]4;12;#0075ea\007'
  printf '\033]4;13;#ffefff\007'
  printf '\033]4;14;#93ffef\007'
  printf '\033]4;15;#fff3fe\007'
  printf '\033]10;#0b0b0b\007'
  printf '\033]11;#ff8cd9\007'
  printf '\033]12;#c7ff98\007'
}
```

### urban

```bash
urban() {
  printf '\033]4;0;#33303b\007'
  printf '\033]4;1;#87404f\007'
  printf '\033]4;2;#74934e\007'
  printf '\033]4;3;#ae835a\007'
  printf '\033]4;4;#615772\007'
  printf '\033]4;5;#854b64\007'
  printf '\033]4;6;#625464\007'
  printf '\033]4;7;#c0a79a\007'
  printf '\033]4;8;#5c5865\007'
  printf '\033]4;9;#87404f\007'
  printf '\033]4;10;#74934e\007'
  printf '\033]4;11;#ae835a\007'
  printf '\033]4;12;#615772\007'
  printf '\033]4;13;#854b64\007'
  printf '\033]4;14;#625464\007'
  printf '\033]4;15;#c0a79a\007'
  printf '\033]10;#c0a79a\007'
  printf '\033]11;#312e39\007'
  printf '\033]12;#c0a79a\007'
}
```

### Urple

```bash
urple() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#b0425b\007'
  printf '\033]4;2;#37a415\007'
  printf '\033]4;3;#ad5c42\007'
  printf '\033]4;4;#564d9b\007'
  printf '\033]4;5;#6c3ca1\007'
  printf '\033]4;6;#808080\007'
  printf '\033]4;7;#87799c\007'
  printf '\033]4;8;#6a3f32\007'
  printf '\033]4;9;#ff6388\007'
  printf '\033]4;10;#29e620\007'
  printf '\033]4;11;#f08161\007'
  printf '\033]4;12;#867aed\007'
  printf '\033]4;13;#a05eee\007'
  printf '\033]4;14;#eaeaea\007'
  printf '\033]4;15;#bfa3ff\007'
  printf '\033]10;#877a9b\007'
  printf '\033]11;#1b1b23\007'
  printf '\033]12;#a063eb\007'
}
```

### Vague

```bash
vague() {
  printf '\033]4;0;#252530\007'
  printf '\033]4;1;#d8647e\007'
  printf '\033]4;2;#7fa563\007'
  printf '\033]4;3;#f3be7c\007'
  printf '\033]4;4;#6e94b2\007'
  printf '\033]4;5;#bb9dbd\007'
  printf '\033]4;6;#aeaed1\007'
  printf '\033]4;7;#cdcdcd\007'
  printf '\033]4;8;#606079\007'
  printf '\033]4;9;#e08398\007'
  printf '\033]4;10;#99b782\007'
  printf '\033]4;11;#f5cb96\007'
  printf '\033]4;12;#8ba9c1\007'
  printf '\033]4;13;#c9b1ca\007'
  printf '\033]4;14;#bebeda\007'
  printf '\033]4;15;#d7d7d7\007'
  printf '\033]10;#cdcdcd\007'
  printf '\033]11;#141415\007'
  printf '\033]12;#cdcdcd\007'
}
```

### Vaughn

```bash
vaughn() {
  printf '\033]4;0;#25234f\007'
  printf '\033]4;1;#705050\007'
  printf '\033]4;2;#60b48a\007'
  printf '\033]4;3;#dfaf8f\007'
  printf '\033]4;4;#5555ff\007'
  printf '\033]4;5;#f08cc3\007'
  printf '\033]4;6;#8cd0d3\007'
  printf '\033]4;7;#709080\007'
  printf '\033]4;8;#709080\007'
  printf '\033]4;9;#dca3a3\007'
  printf '\033]4;10;#60b48a\007'
  printf '\033]4;11;#f0dfaf\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ec93d3\007'
  printf '\033]4;14;#93e0e3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dcdccc\007'
  printf '\033]11;#25234f\007'
  printf '\033]12;#ff5555\007'
}
```

### Vercel

```bash
vercel() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#fc0036\007'
  printf '\033]4;2;#29a948\007'
  printf '\033]4;3;#ffae00\007'
  printf '\033]4;4;#006aff\007'
  printf '\033]4;5;#f32882\007'
  printf '\033]4;6;#00ac96\007'
  printf '\033]4;7;#feffff\007'
  printf '\033]4;8;#a8a8a8\007'
  printf '\033]4;9;#ff8080\007'
  printf '\033]4;10;#4be15d\007'
  printf '\033]4;11;#ffae00\007'
  printf '\033]4;12;#49aeff\007'
  printf '\033]4;13;#f97ea8\007'
  printf '\033]4;14;#00e4c4\007'
  printf '\033]4;15;#fefefe\007'
  printf '\033]10;#fafafa\007'
  printf '\033]11;#101010\007'
  printf '\033]12;#f32882\007'
}
```

### Vesper

```bash
vesper() {
  printf '\033]4;0;#101010\007'
  printf '\033]4;1;#f5a191\007'
  printf '\033]4;2;#90b99f\007'
  printf '\033]4;3;#e6b99d\007'
  printf '\033]4;4;#aca1cf\007'
  printf '\033]4;5;#e29eca\007'
  printf '\033]4;6;#ea83a5\007'
  printf '\033]4;7;#a0a0a0\007'
  printf '\033]4;8;#7e7e7e\007'
  printf '\033]4;9;#ff8080\007'
  printf '\033]4;10;#99ffe4\007'
  printf '\033]4;11;#ffc799\007'
  printf '\033]4;12;#b9aeda\007'
  printf '\033]4;13;#ecaad6\007'
  printf '\033]4;14;#f591b2\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#101010\007'
  printf '\033]12;#acb1ab\007'
}
```

### Vibrant Ink

```bash
vibrant_ink() {
  printf '\033]4;0;#878787\007'
  printf '\033]4;1;#ff6600\007'
  printf '\033]4;2;#ccff04\007'
  printf '\033]4;3;#ffcc00\007'
  printf '\033]4;4;#44b4cc\007'
  printf '\033]4;5;#9933cc\007'
  printf '\033]4;6;#44b4cc\007'
  printf '\033]4;7;#f5f5f5\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff0000\007'
  printf '\033]4;10;#00ff00\007'
  printf '\033]4;11;#ffff00\007'
  printf '\033]4;12;#0000ff\007'
  printf '\033]4;13;#ff00ff\007'
  printf '\033]4;14;#00ffff\007'
  printf '\033]4;15;#e5e5e5\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#ffffff\007'
}
```

### Vimbones

```bash
vimbones() {
  printf '\033]4;0;#f0f0ca\007'
  printf '\033]4;1;#a8334c\007'
  printf '\033]4;2;#4f6c31\007'
  printf '\033]4;3;#944927\007'
  printf '\033]4;4;#286486\007'
  printf '\033]4;5;#88507d\007'
  printf '\033]4;6;#3b8992\007'
  printf '\033]4;7;#353535\007'
  printf '\033]4;8;#acac89\007'
  printf '\033]4;9;#94253e\007'
  printf '\033]4;10;#3f5a22\007'
  printf '\033]4;11;#803d1c\007'
  printf '\033]4;12;#1d5573\007'
  printf '\033]4;13;#7b3b70\007'
  printf '\033]4;14;#2b747c\007'
  printf '\033]4;15;#5c5c5c\007'
  printf '\033]10;#353535\007'
  printf '\033]11;#f0f0ca\007'
  printf '\033]12;#353535\007'
}
```

### Violet Dark

```bash
violet_dark() {
  printf '\033]4;0;#56595c\007'
  printf '\033]4;1;#c94c22\007'
  printf '\033]4;2;#85981c\007'
  printf '\033]4;3;#b4881d\007'
  printf '\033]4;4;#2e8bce\007'
  printf '\033]4;5;#d13a82\007'
  printf '\033]4;6;#32a198\007'
  printf '\033]4;7;#c9c6bd\007'
  printf '\033]4;8;#45484b\007'
  printf '\033]4;9;#bd3613\007'
  printf '\033]4;10;#738a04\007'
  printf '\033]4;11;#a57705\007'
  printf '\033]4;12;#2176c7\007'
  printf '\033]4;13;#c61c6f\007'
  printf '\033]4;14;#259286\007'
  printf '\033]4;15;#c9c6bd\007'
  printf '\033]10;#708284\007'
  printf '\033]11;#1c1d1f\007'
  printf '\033]12;#708284\007'
}
```

### Violet Light

```bash
violet_light() {
  printf '\033]4;0;#56595c\007'
  printf '\033]4;1;#c94c22\007'
  printf '\033]4;2;#85981c\007'
  printf '\033]4;3;#b4881d\007'
  printf '\033]4;4;#2e8bce\007'
  printf '\033]4;5;#d13a82\007'
  printf '\033]4;6;#32a198\007'
  printf '\033]4;7;#b9b6af\007'
  printf '\033]4;8;#45484b\007'
  printf '\033]4;9;#bd3613\007'
  printf '\033]4;10;#738a04\007'
  printf '\033]4;11;#a57705\007'
  printf '\033]4;12;#2176c7\007'
  printf '\033]4;13;#c61c6f\007'
  printf '\033]4;14;#259286\007'
  printf '\033]4;15;#c9c6bd\007'
  printf '\033]10;#536870\007'
  printf '\033]11;#fcf4dc\007'
  printf '\033]12;#536870\007'
}
```

### Violite

```bash
violite() {
  printf '\033]4;0;#241c36\007'
  printf '\033]4;1;#ec7979\007'
  printf '\033]4;2;#79ecb3\007'
  printf '\033]4;3;#ece279\007'
  printf '\033]4;4;#a979ec\007'
  printf '\033]4;5;#ec79ec\007'
  printf '\033]4;6;#79ecec\007'
  printf '\033]4;7;#eef4f6\007'
  printf '\033]4;8;#56447a\007'
  printf '\033]4;9;#ef8f8f\007'
  printf '\033]4;10;#9fefbf\007'
  printf '\033]4;11;#efe78f\007'
  printf '\033]4;12;#b78fef\007'
  printf '\033]4;13;#ef8fcf\007'
  printf '\033]4;14;#9fefef\007'
  printf '\033]4;15;#f8fafc\007'
  printf '\033]10;#eef4f6\007'
  printf '\033]11;#241c36\007'
  printf '\033]12;#eef4f6\007'
}
```

### Warm Neon

```bash
warm_neon() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#e24346\007'
  printf '\033]4;2;#39b13a\007'
  printf '\033]4;3;#dae145\007'
  printf '\033]4;4;#4261c5\007'
  printf '\033]4;5;#f920fb\007'
  printf '\033]4;6;#2abbd4\007'
  printf '\033]4;7;#d0b8a3\007'
  printf '\033]4;8;#fefcfc\007'
  printf '\033]4;9;#e97071\007'
  printf '\033]4;10;#9cc090\007'
  printf '\033]4;11;#ddda7a\007'
  printf '\033]4;12;#7b91d6\007'
  printf '\033]4;13;#f674ba\007'
  printf '\033]4;14;#5ed1e5\007'
  printf '\033]4;15;#d8c8bb\007'
  printf '\033]10;#afdab6\007'
  printf '\033]11;#404040\007'
  printf '\033]12;#30ff24\007'
}
```

### Wez

```bash
wez() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#cc5555\007'
  printf '\033]4;2;#55cc55\007'
  printf '\033]4;3;#cdcd55\007'
  printf '\033]4;4;#5555cc\007'
  printf '\033]4;5;#cc55cc\007'
  printf '\033]4;6;#7acaca\007'
  printf '\033]4;7;#cccccc\007'
  printf '\033]4;8;#555555\007'
  printf '\033]4;9;#ff5555\007'
  printf '\033]4;10;#55ff55\007'
  printf '\033]4;11;#ffff55\007'
  printf '\033]4;12;#5555ff\007'
  printf '\033]4;13;#ff55ff\007'
  printf '\033]4;14;#55ffff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b3b3b3\007'
  printf '\033]11;#000000\007'
  printf '\033]12;#53ae71\007'
}
```

### Whimsy

```bash
whimsy() {
  printf '\033]4;0;#535178\007'
  printf '\033]4;1;#ef6487\007'
  printf '\033]4;2;#5eca89\007'
  printf '\033]4;3;#fdd877\007'
  printf '\033]4;4;#65aef7\007'
  printf '\033]4;5;#aa7ff0\007'
  printf '\033]4;6;#43c1be\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#535178\007'
  printf '\033]4;9;#ef6487\007'
  printf '\033]4;10;#5eca89\007'
  printf '\033]4;11;#fdd877\007'
  printf '\033]4;12;#65aef7\007'
  printf '\033]4;13;#aa7ff0\007'
  printf '\033]4;14;#43c1be\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#b3b0d6\007'
  printf '\033]11;#29283b\007'
  printf '\033]12;#b3b0d6\007'
}
```

### Wild Cherry

```bash
wild_cherry() {
  printf '\033]4;0;#000507\007'
  printf '\033]4;1;#d94085\007'
  printf '\033]4;2;#2ab250\007'
  printf '\033]4;3;#ffd16f\007'
  printf '\033]4;4;#883cdc\007'
  printf '\033]4;5;#ececec\007'
  printf '\033]4;6;#c1b8b7\007'
  printf '\033]4;7;#fff8de\007'
  printf '\033]4;8;#009cc9\007'
  printf '\033]4;9;#da6bac\007'
  printf '\033]4;10;#f4dca5\007'
  printf '\033]4;11;#eac066\007'
  printf '\033]4;12;#308cba\007'
  printf '\033]4;13;#ae636b\007'
  printf '\033]4;14;#ff919d\007'
  printf '\033]4;15;#e4838d\007'
  printf '\033]10;#dafaff\007'
  printf '\033]11;#1f1726\007'
  printf '\033]12;#dd00ff\007'
}
```

### Wilmersdorf

```bash
wilmersdorf() {
  printf '\033]4;0;#34373e\007'
  printf '\033]4;1;#e06383\007'
  printf '\033]4;2;#7ebebd\007'
  printf '\033]4;3;#cccccc\007'
  printf '\033]4;4;#a6c1e0\007'
  printf '\033]4;5;#e1c1ee\007'
  printf '\033]4;6;#5b94ab\007'
  printf '\033]4;7;#ababab\007'
  printf '\033]4;8;#50545d\007'
  printf '\033]4;9;#fa7193\007'
  printf '\033]4;10;#8fd7d6\007'
  printf '\033]4;11;#d1dfff\007'
  printf '\033]4;12;#b2cff0\007'
  printf '\033]4;13;#efccfd\007'
  printf '\033]4;14;#69abc5\007'
  printf '\033]4;15;#d3d3d3\007'
  printf '\033]10;#c6c6c6\007'
  printf '\033]11;#282b33\007'
  printf '\033]12;#7ebebd\007'
}
```

### Wombat

```bash
wombat() {
  printf '\033]4;0;#000000\007'
  printf '\033]4;1;#ff615a\007'
  printf '\033]4;2;#b1e969\007'
  printf '\033]4;3;#ebd99c\007'
  printf '\033]4;4;#5da9f6\007'
  printf '\033]4;5;#e86aff\007'
  printf '\033]4;6;#82fff7\007'
  printf '\033]4;7;#dedacf\007'
  printf '\033]4;8;#4a4a4a\007'
  printf '\033]4;9;#f58c80\007'
  printf '\033]4;10;#ddf88f\007'
  printf '\033]4;11;#eee5b2\007'
  printf '\033]4;12;#a5c7ff\007'
  printf '\033]4;13;#ddaaff\007'
  printf '\033]4;14;#b7fff9\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dedacf\007'
  printf '\033]11;#171717\007'
  printf '\033]12;#bbbbbb\007'
}
```

### Wryan

```bash
wryan() {
  printf '\033]4;0;#333333\007'
  printf '\033]4;1;#8c4665\007'
  printf '\033]4;2;#287373\007'
  printf '\033]4;3;#7c7c99\007'
  printf '\033]4;4;#395573\007'
  printf '\033]4;5;#5e468c\007'
  printf '\033]4;6;#31658c\007'
  printf '\033]4;7;#899ca1\007'
  printf '\033]4;8;#3d3d3d\007'
  printf '\033]4;9;#bf4d80\007'
  printf '\033]4;10;#53a6a6\007'
  printf '\033]4;11;#9e9ecb\007'
  printf '\033]4;12;#477ab3\007'
  printf '\033]4;13;#7e62b3\007'
  printf '\033]4;14;#6096bf\007'
  printf '\033]4;15;#c0c0c0\007'
  printf '\033]10;#999993\007'
  printf '\033]11;#101010\007'
  printf '\033]12;#9e9ecb\007'
}
```

### Xcode Dark

```bash
xcode_dark() {
  printf '\033]4;0;#414453\007'
  printf '\033]4;1;#ff8170\007'
  printf '\033]4;2;#78c2b3\007'
  printf '\033]4;3;#d9c97c\007'
  printf '\033]4;4;#4eb0cc\007'
  printf '\033]4;5;#ff7ab2\007'
  printf '\033]4;6;#b281eb\007'
  printf '\033]4;7;#dfdfe0\007'
  printf '\033]4;8;#7f8c98\007'
  printf '\033]4;9;#ff8170\007'
  printf '\033]4;10;#acf2e4\007'
  printf '\033]4;11;#ffa14f\007'
  printf '\033]4;12;#6bdfff\007'
  printf '\033]4;13;#ff7ab2\007'
  printf '\033]4;14;#dabaff\007'
  printf '\033]4;15;#dfdfe0\007'
  printf '\033]10;#dfdfe0\007'
  printf '\033]11;#292a30\007'
  printf '\033]12;#dfdfe0\007'
}
```

### Xcode Dark hc

```bash
xcode_dark_hc() {
  printf '\033]4;0;#43454b\007'
  printf '\033]4;1;#ff8a7a\007'
  printf '\033]4;2;#83c9bc\007'
  printf '\033]4;3;#d9c668\007'
  printf '\033]4;4;#4ec4e6\007'
  printf '\033]4;5;#ff85b8\007'
  printf '\033]4;6;#cda1ff\007'
  printf '\033]4;7;#ffffff\007'
  printf '\033]4;8;#838991\007'
  printf '\033]4;9;#ff8a7a\007'
  printf '\033]4;10;#b1faeb\007'
  printf '\033]4;11;#ffa14f\007'
  printf '\033]4;12;#6bdfff\007'
  printf '\033]4;13;#ff85b8\007'
  printf '\033]4;14;#e5cfff\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#ffffff\007'
  printf '\033]11;#1f1f24\007'
  printf '\033]12;#ffffff\007'
}
```

### Xcode Light

```bash
xcode_light() {
  printf '\033]4;0;#b4d8fd\007'
  printf '\033]4;1;#d12f1b\007'
  printf '\033]4;2;#3e8087\007'
  printf '\033]4;3;#78492a\007'
  printf '\033]4;4;#0f68a0\007'
  printf '\033]4;5;#ad3da4\007'
  printf '\033]4;6;#804fb8\007'
  printf '\033]4;7;#262626\007'
  printf '\033]4;8;#8a99a6\007'
  printf '\033]4;9;#d12f1b\007'
  printf '\033]4;10;#23575c\007'
  printf '\033]4;11;#78492a\007'
  printf '\033]4;12;#0b4f79\007'
  printf '\033]4;13;#ad3da4\007'
  printf '\033]4;14;#4b21b0\007'
  printf '\033]4;15;#262626\007'
  printf '\033]10;#262626\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#262626\007'
}
```

### Xcode Light hc

```bash
xcode_light_hc() {
  printf '\033]4;0;#b4d8fd\007'
  printf '\033]4;1;#ad1805\007'
  printf '\033]4;2;#355d61\007'
  printf '\033]4;3;#78492a\007'
  printf '\033]4;4;#0058a1\007'
  printf '\033]4;5;#9c2191\007'
  printf '\033]4;6;#703daa\007'
  printf '\033]4;7;#000000\007'
  printf '\033]4;8;#8a99a6\007'
  printf '\033]4;9;#ad1805\007'
  printf '\033]4;10;#174145\007'
  printf '\033]4;11;#78492a\007'
  printf '\033]4;12;#003f73\007'
  printf '\033]4;13;#9c2191\007'
  printf '\033]4;14;#441ea1\007'
  printf '\033]4;15;#000000\007'
  printf '\033]10;#000000\007'
  printf '\033]11;#ffffff\007'
  printf '\033]12;#000000\007'
}
```

### Xcode WWDC

```bash
xcode_wwdc() {
  printf '\033]4;0;#494d5c\007'
  printf '\033]4;1;#bb383a\007'
  printf '\033]4;2;#94c66e\007'
  printf '\033]4;3;#d28e5d\007'
  printf '\033]4;4;#8884c5\007'
  printf '\033]4;5;#b73999\007'
  printf '\033]4;6;#00aba4\007'
  printf '\033]4;7;#e7e8eb\007'
  printf '\033]4;8;#7f869e\007'
  printf '\033]4;9;#bb383a\007'
  printf '\033]4;10;#94c66e\007'
  printf '\033]4;11;#d28e5d\007'
  printf '\033]4;12;#8884c5\007'
  printf '\033]4;13;#b73999\007'
  printf '\033]4;14;#00aba4\007'
  printf '\033]4;15;#e7e8eb\007'
  printf '\033]10;#e7e8eb\007'
  printf '\033]11;#292c36\007'
  printf '\033]12;#e7e8eb\007'
}
```

### Zenbones

```bash
zenbones() {
  printf '\033]4;0;#f0edec\007'
  printf '\033]4;1;#a8334c\007'
  printf '\033]4;2;#4f6c31\007'
  printf '\033]4;3;#944927\007'
  printf '\033]4;4;#286486\007'
  printf '\033]4;5;#88507d\007'
  printf '\033]4;6;#3b8992\007'
  printf '\033]4;7;#2c363c\007'
  printf '\033]4;8;#b5a7a0\007'
  printf '\033]4;9;#94253e\007'
  printf '\033]4;10;#3f5a22\007'
  printf '\033]4;11;#803d1c\007'
  printf '\033]4;12;#1d5573\007'
  printf '\033]4;13;#7b3b70\007'
  printf '\033]4;14;#2b747c\007'
  printf '\033]4;15;#4f5e68\007'
  printf '\033]10;#2c363c\007'
  printf '\033]11;#f0edec\007'
  printf '\033]12;#2c363c\007'
}
```

### Zenbones Dark

```bash
zenbones_dark() {
  printf '\033]4;0;#1c1917\007'
  printf '\033]4;1;#de6e7c\007'
  printf '\033]4;2;#819b69\007'
  printf '\033]4;3;#b77e64\007'
  printf '\033]4;4;#6099c0\007'
  printf '\033]4;5;#b279a7\007'
  printf '\033]4;6;#66a5ad\007'
  printf '\033]4;7;#b4bdc3\007'
  printf '\033]4;8;#4d4540\007'
  printf '\033]4;9;#e8838f\007'
  printf '\033]4;10;#8bae68\007'
  printf '\033]4;11;#d68c67\007'
  printf '\033]4;12;#61abda\007'
  printf '\033]4;13;#cf86c1\007'
  printf '\033]4;14;#65b8c1\007'
  printf '\033]4;15;#888f94\007'
  printf '\033]10;#b4bdc3\007'
  printf '\033]11;#1c1917\007'
  printf '\033]12;#c4cacf\007'
}
```

### Zenbones Light

```bash
zenbones_light() {
  printf '\033]4;0;#f0edec\007'
  printf '\033]4;1;#a8334c\007'
  printf '\033]4;2;#4f6c31\007'
  printf '\033]4;3;#944927\007'
  printf '\033]4;4;#286486\007'
  printf '\033]4;5;#88507d\007'
  printf '\033]4;6;#3b8992\007'
  printf '\033]4;7;#2c363c\007'
  printf '\033]4;8;#b5a7a0\007'
  printf '\033]4;9;#94253e\007'
  printf '\033]4;10;#3f5a22\007'
  printf '\033]4;11;#803d1c\007'
  printf '\033]4;12;#1d5573\007'
  printf '\033]4;13;#7b3b70\007'
  printf '\033]4;14;#2b747c\007'
  printf '\033]4;15;#4f5e68\007'
  printf '\033]10;#2c363c\007'
  printf '\033]11;#f0edec\007'
  printf '\033]12;#2c363c\007'
}
```

### Zenburn

```bash
zenburn() {
  printf '\033]4;0;#4d4d4d\007'
  printf '\033]4;1;#7d5d5d\007'
  printf '\033]4;2;#60b48a\007'
  printf '\033]4;3;#f0dfaf\007'
  printf '\033]4;4;#5d6d7d\007'
  printf '\033]4;5;#dc8cc3\007'
  printf '\033]4;6;#8cd0d3\007'
  printf '\033]4;7;#dcdccc\007'
  printf '\033]4;8;#709080\007'
  printf '\033]4;9;#dca3a3\007'
  printf '\033]4;10;#c3bf9f\007'
  printf '\033]4;11;#e0cf9f\007'
  printf '\033]4;12;#94bff3\007'
  printf '\033]4;13;#ec93d3\007'
  printf '\033]4;14;#93e0e3\007'
  printf '\033]4;15;#ffffff\007'
  printf '\033]10;#dcdccc\007'
  printf '\033]11;#3f3f3f\007'
  printf '\033]12;#73635a\007'
}
```

### Zenburned

```bash
zenburned() {
  printf '\033]4;0;#404040\007'
  printf '\033]4;1;#e3716e\007'
  printf '\033]4;2;#819b69\007'
  printf '\033]4;3;#b77e64\007'
  printf '\033]4;4;#6099c0\007'
  printf '\033]4;5;#b279a7\007'
  printf '\033]4;6;#66a5ad\007'
  printf '\033]4;7;#f0e4cf\007'
  printf '\033]4;8;#6f6768\007'
  printf '\033]4;9;#ec8685\007'
  printf '\033]4;10;#8bae68\007'
  printf '\033]4;11;#d68c67\007'
  printf '\033]4;12;#61abda\007'
  printf '\033]4;13;#cf86c1\007'
  printf '\033]4;14;#65b8c1\007'
  printf '\033]4;15;#c0ab86\007'
  printf '\033]10;#f0e4cf\007'
  printf '\033]11;#404040\007'
  printf '\033]12;#f3eadb\007'
}
```

### Zenwritten Dark

```bash
zenwritten_dark() {
  printf '\033]4;0;#191919\007'
  printf '\033]4;1;#de6e7c\007'
  printf '\033]4;2;#819b69\007'
  printf '\033]4;3;#b77e64\007'
  printf '\033]4;4;#6099c0\007'
  printf '\033]4;5;#b279a7\007'
  printf '\033]4;6;#66a5ad\007'
  printf '\033]4;7;#bbbbbb\007'
  printf '\033]4;8;#4a4546\007'
  printf '\033]4;9;#e8838f\007'
  printf '\033]4;10;#8bae68\007'
  printf '\033]4;11;#d68c67\007'
  printf '\033]4;12;#61abda\007'
  printf '\033]4;13;#cf86c1\007'
  printf '\033]4;14;#65b8c1\007'
  printf '\033]4;15;#8e8e8e\007'
  printf '\033]10;#bbbbbb\007'
  printf '\033]11;#191919\007'
  printf '\033]12;#c9c9c9\007'
}
```

### Zenwritten Light

```bash
zenwritten_light() {
  printf '\033]4;0;#eeeeee\007'
  printf '\033]4;1;#a8334c\007'
  printf '\033]4;2;#4f6c31\007'
  printf '\033]4;3;#944927\007'
  printf '\033]4;4;#286486\007'
  printf '\033]4;5;#88507d\007'
  printf '\033]4;6;#3b8992\007'
  printf '\033]4;7;#353535\007'
  printf '\033]4;8;#aca9a9\007'
  printf '\033]4;9;#94253e\007'
  printf '\033]4;10;#3f5a22\007'
  printf '\033]4;11;#803d1c\007'
  printf '\033]4;12;#1d5573\007'
  printf '\033]4;13;#7b3b70\007'
  printf '\033]4;14;#2b747c\007'
  printf '\033]4;15;#5c5c5c\007'
  printf '\033]10;#353535\007'
  printf '\033]11;#eeeeee\007'
  printf '\033]12;#353535\007'
}
```

