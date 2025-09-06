# REYN-OS Master Playbook

This file explains every step + command so you always know what you’re doing.

---

## Step 0 – Clean slate
- New GitHub account, new repo.  
- Generate SSH key (public key goes to GitHub, private key stays on phone).  
- Activate key with `ssh-agent` and `ssh-add`.

---

## Step 1 – Git identity
```bash
git config --global user.name "nollyreyn2023-dotcom"
git config --global user.email "nollyreyn2023-dotcom@users.noreply.github.com"
ssh-keygen -t ed25519 -C "nollyreyn2023-dotcom@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
git add -A
git commit -m "snapshot"
git push

---

## Step X – SSH public key: copy → add → test

### 1) Show your public key (safe to share)
```bash
cat ~/.ssh/id_ed25519.pub
### Your current SSH public key
