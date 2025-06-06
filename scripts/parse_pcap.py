#!/usr/bin/env python3
import sys
try:
    import pyshark
except ImportError:
    print("Install pyshark: pip install pyshark")
    sys.exit(1)

if len(sys.argv) != 2:
    print("Usage: parse_pcap.py <file.pcap>")
    sys.exit(1)

cap = pyshark.FileCapture(sys.argv[1])
ips = set()
for pkt in cap:
    try:
        src = pkt.ip.src
        dst = pkt.ip.dst
        ips.add(src)
        ips.add(dst)
    except AttributeError:
        continue

print("Unique IP addresses in this capture:")
for ip in ips:
    print("  ", ip)
