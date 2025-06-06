# BLE Log Analysis

This document explains how to analyze BLE logs captured with `btmon` or `hcidump`.

## Opening Logs in Wireshark
1. Open Wireshark.
2. File → Open → Select the `examples/sample_ble_dump.log` file.
3. Set display filter: `bluetooth.addr == XX:XX:XX:XX:XX:XX`.

## Interpreting GATT Attributes
- Look for ATT read/write to characteristic handles.
- Identify UUIDs corresponding to bulb control (e.g., color change).
