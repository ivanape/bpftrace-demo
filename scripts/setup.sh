#!/bin/bash

set -eux

sudo apt-get update
sudo apt-get install -y bpfcc-tools "linux-headers-$(uname -r)"
sudo apt install -y bpftrace