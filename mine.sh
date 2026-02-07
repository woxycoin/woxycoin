#!/bin/bash
# Woxycoin Mining Script
# Usage: ./mine.sh [blocks]

BLOCKS=\${1:-1}
CLI="./src/woxycoin-cli"

echo "=============================="
echo "   WOXYCOIN MINER"
echo "=============================="

# Check if daemon is running
if ! \$CLI getblockcount &>/dev/null; then
    echo "Starting Woxycoin daemon..."
    ./src/woxycoind -daemon
    sleep 3
fi

# Get or create address
ADDRESS=\$(\$CLI getnewaddress 2>/dev/null)
echo "Mining address: \$ADDRESS"
echo ""

# Current block count
CURRENT=\$(\$CLI getblockcount)
echo "Current blocks: \$CURRENT"
echo "Mining \$BLOCKS block(s)..."
echo ""

# Mine
RESULT=\$(\$CLI generatetoaddress \$BLOCKS "\$ADDRESS" 10000000 2>&1)

if [[ \$RESULT == *"error"* ]]; then
    echo "Error: \$RESULT"
else
    NEW_COUNT=\$(\$CLI getblockcount)
    echo "SUCCESS! New blocks: \$NEW_COUNT"
    echo "Mined: \$((NEW_COUNT - CURRENT)) block(s)"
    echo ""
    echo "Balance: \$(\$CLI getbalance) WOXY"
fi

echo "=============================="
