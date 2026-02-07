#!/bin/bash
# Woxycoin Start Script

echo "=============================="
echo "   WOXYCOIN NODE"
echo "=============================="

CLI="./src/woxycoin-cli"

if \$CLI getblockcount &>/dev/null; then
    echo "Node is already running!"
    echo "Blocks: \$(\$CLI getblockcount)"
    echo "Connections: \$(\$CLI getconnectioncount)"
else
    echo "Starting Woxycoin..."
    ./src/woxycoind -daemon
    sleep 3
    if \$CLI getblockcount &>/dev/null; then
        echo "Node started successfully!"
        echo "Blocks: \$(\$CLI getblockcount)"
    else
        echo "Failed to start node"
    fi
fi
echo "=============================="
