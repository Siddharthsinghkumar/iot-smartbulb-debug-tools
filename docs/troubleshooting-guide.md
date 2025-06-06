# Troubleshooting Guide

This guide walks through capturing BLE and Wi-Fi logs for Tuya-based smart bulbs on Ubuntu.

## 1. Identify Network Interface
- Run `ip addr` to find your Wi-Fi interface (e.g., `wlo1`).

## 2. Install Prerequisites
```bash
sudo apt update
sudo apt install bluetooth bluez-tools wireshark tcpdump python3-pip
sudo usermod -aG wireshark $USER
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
```

## 3. Capturing BLE Traffic
- Use `btmon` or `hcidump` to capture BLE advertisements.
```bash
sudo btmon > examples/sample_ble_dump.log
```

## 4. Capturing Wi-Fi Traffic
- Once the bulb is on Wi-Fi at 192.168.0.10:
```bash
sudo tcpdump -i wlo1 host 192.168.0.10 -w examples/sample_wifi_capture.pcap
```

## 5. Inspecting Router Logs
- Access your router GUI (e.g., `192.168.0.1`), navigate to Wi-Fi logs, and search for the bulb's MAC address.

## 6. BLE Service Exploration
- Use `bluetoothctl` to scan and find the bulb's BLE address.
- Optionally, use `gatttool` or a phone app to explore GATT services.
