# Woxycoin (WOXY)

A simple cryptocurrency built on Litecoin codebase.

## Download

**Linux:** [woxycoin-linux-x64.zip](https://github.com/woxycoin/WoxyCoin/releases/latest/download/woxycoin-linux-x64.zip)

## Quick Start (Linux)

```bash
# Download and extract
wget https://github.com/woxycoin/WoxyCoin/releases/latest/download/woxycoin-linux-x64.zip
unzip woxycoin-linux-x64.zip
cd woxycoin-linux-x64

# Start daemon
./woxycoind -daemon

# Wait 5 seconds, then mine
./woxycoin-cli generatetoaddress 1 $(./woxycoin-cli getnewaddress) 99999999

# Check balance
./woxycoin-cli getbalance
```

## Coin Info

| Property | Value |
|----------|-------|
| **Name** | Woxycoin |
| **Symbol** | WOXY |
| **Algorithm** | Scrypt |
| **Block Time** | ~2.5 minutes |
| **Block Reward** | 50 WOXY |
| **P2P Port** | 9777 |
| **RPC Port** | 9778 |

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
sudo apt-get update
sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config   libssl-dev libevent-dev libboost-all-dev libdb-dev libdb++-dev   libminiupnpc-dev libzmq3-dev libfmt-dev libsqlite3-dev

git clone https://github.com/woxycoin/WoxyCoin.git
cd WoxyCoin
./autogen.sh
./configure --with-incompatible-bdb
make -j$(nproc)
```

## License

MIT License
