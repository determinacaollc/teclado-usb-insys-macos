#!/bin/zsh

SCRIPT_DIR="${0:A:h}"
APPLY_SCRIPT="$SCRIPT_DIR/apply-usb-keyboard-remap.sh"
LOG_DIR="$HOME/Library/Logs/BrilhoPhilips"
LOG_FILE="$LOG_DIR/usb-keyboard-remap.log"

mkdir -p "$LOG_DIR"

last_registry=""

while true; do
  registry=$(/usr/bin/hidutil list | /usr/bin/awk '$1=="0x1a2c" && $2=="0x2d23" && $4=="1" && $5=="6" { print $6; exit }')

  if [[ -n "$registry" && "$registry" != "$last_registry" ]]; then
    /bin/sleep 0.8
    if "$APPLY_SCRIPT"; then
      echo "$(date '+%Y-%m-%d %H:%M:%S') applied remap to registry $registry" >> "$LOG_FILE"
      last_registry="$registry"
    else
      echo "$(date '+%Y-%m-%d %H:%M:%S') failed to apply remap to registry $registry" >> "$LOG_FILE"
    fi
  fi

  /bin/sleep 2
done
