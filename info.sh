#!/bin/bash
# Woxycoin Info Script
CLI="./src/woxycoin-cli"
echo "=============================="
echo "   WOXYCOIN INFO"
echo "=============================="
echo "Blocks:      \$(\$CLI getblockcount 2>/dev/null || echo "N/A")"
echo "Connections: \$(\$CLI getconnectioncount 2>/dev/null || echo "N/A")"
echo "Balance:     \$(\$CLI getbalance 2>/dev/null || echo "N/A") WOXY"
echo "Difficulty:  \$(\$CLI getdifficulty 2>/dev/null || echo "N/A")"
echo "=============================="
