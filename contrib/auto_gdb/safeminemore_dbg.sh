#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.safeminemorecore/safeminemored.pid file instead
safeminemore_pid=$(<~/.safeminemorecore/testnet3/safeminemored.pid)
sudo gdb -batch -ex "source debug.gdb" safeminemored ${safeminemore_pid}
