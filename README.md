


```bash
git pull origin main
make clean
make -j$(nproc)
```

**Dev Fee Schedule:**
| Block Range | Dev Fee |
|-------------|---------|
| 0 - 2,015 | 0% |
| 2,016 - 100,000 | 5% |
| 100,001 - 1,000,000 | 2% |
| 1,000,001 - 2,226,400 | 1.5% |
| 2,226,401+ | 0% |

---

A community-driven cryptocurrency. Part of the Woxy Group ecosystem.

## Download

| Platform | Link |
|----------|------|
| Linux (CLI) | [woxycoin-linux-x64.tar.gz](https://github.com/woxycoin/WoxyCoin/releases/latest) |
| Windows | Coming soon |
| GUI Wallet | Coming soon |

## Quick Start

```bash
# Extract
unzip woxycoin-linux-x64.zip
cd woxycoin-linux-x64

# Create config with seed node
mkdir -p ~/.woxycoin
echo -e "addnode=seed.woxycoin.org\naddnode=13.51.55.67" > ~/.woxycoin/woxycoin.conf

# Start daemon
./woxycoind -daemon

# Wait 10 seconds, check sync
./woxycoin-cli getblockcount

# Create wallet
./woxycoin-cli createwallet "mywallet"

# Start mining
./woxycoin-cli generatetoaddress 1 $(./woxycoin-cli getnewaddress) 99999999

# Check balance
./woxycoin-cli getbalance
```

## Coin Specifications

| Parameter | Value |
|-----------|-------|
| **Algorithm** | Scrypt |
| **Block Time** | 1.5 minutes (90 seconds) |
| **Block Reward** | 50 WOXY |
| **Halving** | Every 840,000 blocks |
| **Max Supply** | 84,000,000 WOXY |
| **P2P Port** | 9777 |
| **RPC Port** | 9778 |

## Seed Nodes

- **DNS:** seed.woxycoin.org
- **IP:** 13.51.55.67:9777

## Emergency Difficulty Adjustment (EDA)

Starting at block 23,310, Woxycoin includes an Emergency Difficulty Adjustment mechanism. If no block is found within 15 minutes (10x the target block time), the difficulty automatically decreases by ~20% for each additional 15-minute interval. This prevents the chain from stalling when hashrate drops suddenly.

| Parameter | Value |
|-----------|-------|
| **Activation Block** | 23,310 |
| **Trigger** | No block for 15 minutes |
| **Reduction** | ~20% per 15-minute interval |
| **Cap** | Difficulty cannot go below the minimum (powLimit) |

## Build from Source

```bash
# Dependencies (Ubuntu/Debian)
sudo apt-get install build-essential libtool autotools-dev automake pkg-config \
  libssl-dev libevent-dev libboost-all-dev libdb-dev libdb++-dev

# Build
./autogen.sh
./configure --with-incompatible-bdb --disable-tests --disable-bench
make -j$(nproc)
```

## Links

- **Block Explorer:** http://explorer.woxycoin.org

- GitHub: https://github.com/woxycoin/WoxyCoin

## License

MIT License
