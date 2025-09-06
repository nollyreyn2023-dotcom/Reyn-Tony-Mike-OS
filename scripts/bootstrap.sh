#!/data/data/com.termux/files/usr/bin/bash
# REYN-OS: base installer/config (idempotent)
set -euo pipefail
log(){ printf "\n[REYN-OS] %s\n" "$*"; }

log "Update packages"; pkg update -y && pkg upgrade -y
log "Enable storage"; termux-setup-storage || true
log "Install core";  pkg install -y git python nodejs openjdk-17 clang
log "Install utils"; pkg install -y termux-api curl wget proot openssh jq unzip

log "Git identity";  git config --global user.name "nollyreyn2023-dotcom"; \
                     git config --global user.email "nollyreyn2023-dotcom@users.noreply.github.com"; \
                     git config --global init.defaultBranch main

log "SSH agent autoload"
mkdir -p ~/.termux/boot ~/.ssh; chmod 700 ~/.ssh
cat > ~/.termux/boot/start-ssh-agent <<'BOOT'
#!/data/data/com.termux/files/usr/bin/sh
ssh-agent -a $PREFIX/var/run/ssh-agent.sock >/dev/null 2>&1
ssh-add -l >/dev/null 2>&1 || ssh-add ~/.ssh/id_ed25519 >/dev/null 2>&1
BOOT
chmod +x ~/.termux/boot/start-ssh-agent

log "Aliases"
grep -q "alias gs=" ~/.bashrc 2>/dev/null || cat >> ~/.bashrc <<'RC'
alias gs='git status'; alias ga='git add'; alias gc='git commit -m'; alias gp='git push'; alias gl='git pull'
RC

log "Bootstrap complete. Open new session or run: . ~/.bashrc"
