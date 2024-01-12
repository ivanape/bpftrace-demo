# ebpf-tools

## usage

* We'll assume you've installed VirtualBox and Vagrant.

Setup the vagrant session (this will take a while).

```sh
make setup
```

Once vagrant session is up, you can verify your install for `bcc`using the "hello world" python script:

```sh
vagrant ssh
sudo /code/hello_world.py
```

In another terminal session

```sh
vagrant ssh
```

In the first terminal session you'll see something similar as the ssh session begins and [`clone`](https://linux.die.net/man/2/clone) syscall is triggered.

```sh
            bash-5259  [000] ....  1069.839261: 0x00000001: Hello, World!
 systemd-journal-404   [000] ....  1204.523418: 0x00000001: Hello, World!
 systemd-journal-404   [000] ....  1204.524228: 0x00000001: Hello, World!
....
```

to tear down

```sh
make clean
```

### Running BCC tools
The tools are installed in `/sbin` (`/usr/sbin` in Ubuntu 18.04) with a -bpfcc extension. More information can be found in the [BCC install docs](https://github.com/iovisor/bcc/blob/master/INSTALL.md#ubuntu---binary).

After `vagrant ssh`, you can run any tool such as `execsnoop` by calling it directly or from the `/usr/sbin` directory. e.g.

```sh
sudo execsnoop-bpfcc

sudo /usr/sbin/execsnoop-bpfcc
```


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


# aya

https://aya-rs.dev/

# beyla

https://github.com/grafana/beyla


## Examples

- https://github.com/lizrice/learning-ebpf


## Credits

Vagrantfile was took from: https://github.com/booyaa/vagrant-bcctools