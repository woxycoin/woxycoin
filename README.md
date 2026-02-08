# Woxycoin (WOXY)

A community-driven cryptocurrency. Part of the Woxy Group ecosystem.

## Download

| Platform | Link |
|----------|------|
| Linux (CLI) | [woxycoin-linux-x64.zip](https://github.com/woxycoin/WoxyCoin/releases/latest) |
| Windows | Coming soon |
| GUI Wallet | Coming soon |

## Quick Start

```bash
# Extract
unzip woxycoin-linux-x64.zip
cd woxycoin-linux-x64

# Create config with seed node
mkdir -p ~/.woxycoin
echo "addnode=13.60.61.151" > ~/.woxycoin/woxycoin.conf

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

## Network

| Node | Address |
|------|---------|
| Seed Node | 13.60.61.151:9777 |

## Commands

| Command | Description |
|---------|-------------|
| `./woxycoind -daemon` | Start node |
| `./woxycoin-cli stop` | Stop node |
| `./woxycoin-cli getblockcount` | Show block height |
| `./woxycoin-cli getbalance` | Show balance |
| `./woxycoin-cli getnewaddress` | Get new address |
| `./woxycoin-cli generatetoaddress 1 ADDRESS 99999999` | Mine 1 block |

## Build from Source

```bash
# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev libboost-all-dev libdb-dev libdb++-dev libminiupnpc-dev libzmq3-dev libfmt-dev libsqlite3-dev

# Clone and build
git clone https://github.com/woxycoin/WoxyCoin.git
cd WoxyCoin
./autogen.sh
./configure --with-incompatible-bdb
make -j$(nproc)
```

## Community

- Reddit: r/Woxycoin (coming soon)
- Discord: (coming soon)

## License

MIT License
