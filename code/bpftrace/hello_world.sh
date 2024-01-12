#!/bin/bash
bpftrace -e 'BEGIN { printf("hello world\n"); }'