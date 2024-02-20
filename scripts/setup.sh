#!/bin/bash

set -eux

sudo apt-get update
sudo apt-get install -y bpfcc-tools "linux-headers-$(uname -r)"
sudo apt install -y bpftrace
BEYLA_VERSION=v1.2.1
BEYLA=beyla-linux-amd64-$BEYLA_VERSION.tar.gz
curl -L https://github.com/grafana/beyla/releases/download/$BEYLA_VERSION/$BEYLA -o $BEYLA
tar -xvzf $BEYLA
sudo mv beyla /usr/local/bin/beyla
rm $BEYLA


CURRENT_VERSION=$(go version | awk '{print $3}')
VERSION=$(curl -s https://go.dev/dl/?mode=json | jq -r '.[0].version')

echo "Current Go version: $CURRENT_VERSION"

if [ "$CURRENT_VERSION" = "$VERSION" ]; then
  echo "Go is already up to date!"
  exit 0
fi

echo "Downloading Go $VERSION..."
wget -q https://go.dev/dl/$VERSION.linux-amd64.tar.gz

echo "Removing old Go version..."
sudo rm -rf /usr/local/go

echo "Installing..."
sudo tar -C /usr/local -xzf $VERSION.linux-amd64.tar.gz

echo "Cleaning up..."
rm $VERSION.linux-amd64.tar.gz

echo "Go $VERSION installed!"


cat <<'EOF' >>~/.bashrc
export PATH=$PATH:/usr/local/go
EOF