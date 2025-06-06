#!/usr/bin/env bash
# Usage: ./capture_wifi.sh <output-file.pcap>

if [ -z "$1" ]; then
  echo "Usage: $0 <output-file.pcap>"
  exit 1
fi

# Detect Wi-Fi interface
IFACE=$(ip -o link show | awk -F': ' '/wlo/ {print $2}')
echo "Using interface: $IFACE"

sudo tcpdump -i "$IFACE" host 192.168.0.10 -w "$1"
