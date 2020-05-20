#!/bin/bash -eu

root="$(cd "$(dirname "$0")" && pwd -P)"

for f in "${root}"/*/setup.sh; do
  (cd "$(dirname "${f}")" && ./setup.sh)
done
