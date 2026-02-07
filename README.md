# Woxycoin (WOXY)

A simple cryptocurrency you can mine on your computer.

---

## WINDOWS - Download & Mine in 2 Minutes

### Step 1: Download
Go to [Releases](https://github.com/woxycoin/woxycoin/releases) and download `woxycoin-windows.zip`

### Step 2: Extract
Unzip the file to a folder (example: `C:\Woxycoin`)

### Step 3: Download Helper Scripts
Download these 4 files from the [windows folder](https://github.com/woxycoin/woxycoin/tree/main/windows) and put them in the same folder:
- `START.bat`
- `MINE.bat`
- `INFO.bat`
- `STOP.bat`

### Step 4: Run
1. Double-click **START.bat** - wait 10 seconds
2. Double-click **MINE.bat** - mining starts!
3. Double-click **INFO.bat** - see your balance

That's it!

---

## LINUX - Download & Mine in 2 Minutes

### Step 1: Download
```bash
cd ~
wget https://github.com/woxycoin/woxycoin/releases/latest/download/woxycoin-linux.tar.gz
tar -xzf woxycoin-linux.tar.gz
cd woxycoin-linux
```

### Step 2: Start Node
```bash
./woxycoind -daemon
```
Wait 5 seconds.

### Step 3: Mine
```bash
./woxycoin-cli generatetoaddress 1 $(./woxycoin-cli getnewaddress) 99999999
```

### Step 4: Check Balance
```bash
./woxycoin-cli getbalance
```

---

## Common Commands

| What you want | Windows (in CMD) | Linux |
|---------------|------------------|-------|
| Start node | `START.bat` | `./woxycoind -daemon` |
| Stop node | `STOP.bat` | `./woxycoin-cli stop` |
| Mine 1 block | `MINE.bat` | `./woxycoin-cli generatetoaddress 1 $(./woxycoin-cli getnewaddress) 99999999` |
| See balance | `INFO.bat` | `./woxycoin-cli getbalance` |
| See block count | `INFO.bat` | `./woxycoin-cli getblockcount` |
| Get new address | - | `./woxycoin-cli getnewaddress` |
| List all addresses | - | `./woxycoin-cli listreceivedbyaddress 0 true` |
| Send coins | - | `./woxycoin-cli sendtoaddress ADDRESS AMOUNT` |

---

## See Your Addresses

**Windows** (open CMD in your Woxycoin folder):
```
woxycoin-cli.exe -rpcport=9878 listreceivedbyaddress 0 true
```

**Linux**:
```bash
./woxycoin-cli listreceivedbyaddress 0 true
```

---

## Coin Info

| | |
|---|---|
| Name | Woxycoin |
| Symbol | WOXY |
| Block Time | 90 seconds |
| Block Reward | 1 WOXY |
| Algorithm | Scrypt |
| P2P Port | 9777 (Linux) / 9877 (Windows) |
| RPC Port | 9778 (Linux) / 9878 (Windows) |

---

## Seed Node

The official seed node is: `84.8.159.109`

This is added automatically when you run START.bat or use the helper scripts.

---

## Need Help?

Open an issue: https://github.com/woxycoin/woxycoin/issues

---

*Woxycoin - A New Beginning*
