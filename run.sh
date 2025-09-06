#!/data/data/com.termux/files/usr/bin/bash
# Thin wrapper that runs the main bootstrap
set -e
scripts/bootstrap.sh
echo "[REYN-OS] Bootstrap complete."
