#!/bin/bash
# Woxycoin Stop Script
echo "Stopping Woxycoin..."
./src/woxycoin-cli stop 2>/dev/null && echo "Stopped!" || echo "Node was not running"
