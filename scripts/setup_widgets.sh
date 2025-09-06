#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
mkdir -p ~/.shortcuts
cat > ~/.shortcuts/reyn-sync.sh <<'W'
#!/data/data/com.termux/files/usr/bin/bash
cd ~/Reyn-Tony-Mike-OS && git pull && git add -A && git commit -m "quick sync" || true && git push || true
termux-toast "REYN-OS: repo synced"
W
chmod +x ~/.shortcuts/reyn-sync.sh
echo "[REYN-OS] Widget shortcuts installed."
