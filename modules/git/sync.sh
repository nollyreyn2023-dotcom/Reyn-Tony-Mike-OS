#!/data/data/com.termux/files/usr/bin/bash
# Module: Git sync helpers
set -euo pipefail
cd ~/Reyn-Tony-Mike-OS
git pull
git add -A
git commit -m "sync: auto" || true
git push
echo "[REYN-OS] Git sync complete."
