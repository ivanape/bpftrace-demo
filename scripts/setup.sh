#!/bin/bash

set -eux

sudo apt-get update
sudo apt-get install -y bpfcc-tools "linux-headers-$(uname -r)"
sudo apt install -y bpftrace
sudo apt install -y golang-go
BEYLA_VERSION=v1.2.1
BEYLA=beyla-linux-amd64-$BEYLA_VERSION.tar.gz
curl -L https://github.com/grafana/beyla/releases/download/$BEYLA_VERSION/$BEYLA -o $BEYLA
tar -xvzf $BEYLA
sudo mv beyla /usr/local/bin/beyla
rm $BEYLA
