#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
