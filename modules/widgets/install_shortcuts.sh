#!/data/data/com.termux/files/usr/bin/bash
# Module: install extra widgets/shortcuts
set -euo pipefail
~/.shortcuts/reyn-sync.sh >/dev/null 2>&1 || true
echo "[REYN-OS] widgets: installed"
