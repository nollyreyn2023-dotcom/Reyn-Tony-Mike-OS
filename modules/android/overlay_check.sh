#!/data/data/com.termux/files/usr/bin/bash
# Module: verify overlay permission and open settings if missing
set -euo pipefail
# There’s no simple CLI to read the toggle; open settings page for safety
am start --user 0 -a android.settings.action.MANAGE_OVERLAY_PERMISSION -d "package:com.termux" >/dev/null 2>&1
termux-toast "Check: Draw over other apps > Termux = Allowed"
