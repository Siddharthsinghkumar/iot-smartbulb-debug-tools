# IoT Smartbulb Debug Tools

Capture and analyze BLE/Wi-Fi logs from Tuya-based IoT bulbs (Syska, etc.) on Ubuntu. Includes scripts and example captures.

## Project Overview

Modern smart bulbs often support both Bluetooth Low Energy (BLE) and Wi-Fi connectivity. On Ubuntu, these bulbs may not appear in the standard Bluetooth device list, yet they are active on the local network. This project provides:

1. A step-by-step troubleshooting guide for capturing BLE and Wi-Fi logs.
2. Shell scripts to automate log captures.
3. Example captures for reference.
4. Documentation on analyzing BLE HCI logs.

## Repository Structure

```
iot-smartbulb-debug-tools/
├── README.md
├── .gitignore
├── LICENSE
├── docs/
│   ├── troubleshooting-guide.md
│   └── ble_log_analysis.md
├── scripts/
│   ├── capture_ble.sh
│   ├── capture_wifi.sh
│   └── parse_pcap.py
├── examples/
│   ├── sample_ble_dump.log
│   ├── sample_wifi_capture.pcap
│   └── sample_hci_btsnoop.log
```
