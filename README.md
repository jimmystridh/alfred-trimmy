# Trimmy Alfred Workflow

An [Alfred](https://www.alfredapp.com/) workflow for [Trimmy](https://github.com/steipete/Trimmy) — the macOS menu bar utility that flattens multi-line shell commands for proper pasting.

## Features

- **Keyword trigger**: Type `trim` to trim your clipboard contents
- **Aggressiveness control**: Specify `trim high`, `trim normal`, or `trim low`
- **Hotkey support**: Configure a global hotkey for instant trimming
- **Notification**: Visual feedback when clipboard is trimmed

## Requirements

1. **Trimmy.app** must be installed ([download](https://github.com/steipete/Trimmy/releases))
2. **Trimmy CLI** must be installed:
   - Open Trimmy.app
   - Go to **Settings → General**
   - Click **"Install CLI Tool"**

## Installation

### Option 1: Download Release

1. Download the latest `Trimmy.alfredworkflow` from [Releases](https://github.com/jimmystridh/alfred-trimmy/releases)
2. Double-click to install in Alfred

### Option 2: Build from Source

```bash
git clone https://github.com/jimmystridh/alfred-trimmy.git
cd alfred-trimmy
./build.sh
# Double-click the generated Trimmy.alfredworkflow
```

## Usage

### Keyword Trigger

| Command | Description |
|---------|-------------|
| `trim` | Trim clipboard at normal aggressiveness |
| `trim high` or `trim h` | Aggressive trimming (joins most lines) |
| `trim low` or `trim l` | Conservative trimming (only obvious continuations) |

### Hotkey

1. Open Alfred Preferences → Workflows → Trimmy
2. Double-click the Hotkey trigger (empty by default)
3. Set your preferred hotkey
4. The hotkey trims at **high** aggressiveness (matching Trimmy's ⌘⌥T behavior)

## Aggressiveness Levels

| Level | Behavior |
|-------|----------|
| **Low** | Only joins lines with explicit continuations (`\`, `|`, etc.) |
| **Normal** | Balanced detection for most shell commands |
| **High** | Aggressively joins lines — best for heavily formatted code blocks |

## How It Works

The workflow:
1. Reads your clipboard contents
2. Passes them through `trimmy --trim -` CLI
3. Copies the trimmed result back to clipboard
4. Shows a notification confirming the action

## Troubleshooting

**"Trimmy CLI not found" error**

Ensure the CLI is installed:
```bash
# Check if trimmy is in PATH
which trimmy

# If not, install via Trimmy.app menu → "Install CLI Tool"
```

**Nothing happens when I use the keyword**

1. Verify Trimmy CLI is installed: `trimmy --version`
2. Check Alfred has automation permissions in System Preferences → Privacy & Security

## License

MIT
