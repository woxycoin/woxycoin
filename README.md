# Woxycoin (WOXY)

A simple cryptocurrency built on Litecoin codebase.

## Quick Info

| Property | Value |
|----------|-------|
| **Name** | Woxycoin |
| **Symbol** | WOXY |
| **Algorithm** | Scrypt |
| **Block Time** | ~2.5 minutes |
| **Block Reward** | 50 WOXY |
| **P2P Port** | 9777 |
| **RPC Port** | 9778 |

## Building from Source

### Linux (Ubuntu/Debian)

```bash
# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config   libssl-dev libevent-dev libboost-all-dev libdb-dev libdb++-dev   libminiupnpc-dev libzmq3-dev qtbase5-dev qttools5-dev-tools libqrencode-dev

# Clone and build
git clone https://github.com/woxycoin/WoxyCoin.git
cd WoxyCoin
./autogen.sh
./configure --with-gui=qt5 --with-incompatible-bdb
make -j$(nproc)
```

### Binaries Location

After building:
- `src/woxycoind` - Daemon
- `src/woxycoin-cli` - CLI wallet
- `src/qt/woxycoin-qt` - GUI wallet

## Basic Commands

```bash
# Start daemon
./src/woxycoind -daemon

# Check block count
./src/woxycoin-cli getblockcount

# Get new address
./src/woxycoin-cli getnewaddress

# Mine blocks
./src/woxycoin-cli generatetoaddress 1 YOUR_ADDRESS 99999999

# Check balance
./src/woxycoin-cli getbalance

# Stop daemon
./src/woxycoin-cli stop
```

## License

MIT License - see [COPYING](COPYING)
