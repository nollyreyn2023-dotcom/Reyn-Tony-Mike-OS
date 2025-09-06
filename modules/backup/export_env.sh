#!/data/data/com.termux/files/usr/bin/bash
# Module: export minimal env for restore
set -euo pipefail
cp ~/.ssh/id_ed25519.pub config/ssh_pub.bak 2>/dev/null || true
git config --global --list > config/git-global.txt
echo "[REYN-OS] exported env to config/"
