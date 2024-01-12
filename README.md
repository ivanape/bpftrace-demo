# Environment

WSL 2 Ubuntu 22.04.3, kernel 5.15.133.1-microsoft-standard-WSL2

# bpftrace

To install bpftrace:

```
sudo apt install bpftrace
```

To install debug symbols to run probes like BEGIN or END:

```
echo "deb http://ddebs.ubuntu.com $(lsb_release -cs) main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-updates main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-proposed main restricted universe multiverse" | \
sudo tee -a /etc/apt/sources.list.d/ddebs.list
sudo apt install ubuntu-dbgsym-keyring
sudo apt update
sudo apt install bpftrace-dbgsym
```

Tutorial: https://github.com/iovisor/bpftrace/blob/master/docs/tutorial_one_liners.md

# bcc

Install in WSL2: https://github.com/iovisor/bcc/blob/master/INSTALL.md#wslwindows-subsystem-for-linux---binary

