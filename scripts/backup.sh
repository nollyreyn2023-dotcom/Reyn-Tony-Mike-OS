#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
OUT=~/storage/Download/reynos-backup-$(date +%Y%m%d-%H%M).zip
zip -r "$OUT" ~/Reyn-Tony-Mike-OS ~/.termux ~/.ssh 2>/dev/null || true
termux-toast "Backup created: $OUT"
echo "[REYN-OS] Backup at $OUT"
