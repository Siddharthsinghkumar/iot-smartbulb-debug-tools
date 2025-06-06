#!/usr/bin/env bash
# Usage: ./capture_ble.sh <output-log>

if [ -z "$1" ]; then
  echo "Usage: $0 <output-file.log>"
  exit 1
fi

echo "Starting BLE capture to $1..."
sudo btmon > "$1"
