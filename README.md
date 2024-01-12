# bpftrace-demo

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
