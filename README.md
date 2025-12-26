# Trimmy Alfred Workflow

An [Alfred](https://www.alfredapp.com/) workflow for [Trimmy](https://github.com/steipete/Trimmy) — the macOS menu bar utility that flattens multi-line shell commands for proper pasting.

## Setup

Install the CLI tool via Trimmy.app **Settings → General → Install CLI Tool**.

## Usage

Trim multi-line shell commands in your clipboard via the `trim` keyword.

![Trimming clipboard](images/screenshot_1.png)

* <kbd>↩</kbd> Trim at normal aggressiveness.

Append `high` or `low` to adjust aggressiveness:

* `trim high` — Aggressive joining for heavily formatted code blocks.
* `trim low` — Conservative, only joins obvious continuations.

![Notification after trimming](images/screenshot_2.png)

Configure the Hotkey for instant trimming at high aggressiveness.

## License

MIT
