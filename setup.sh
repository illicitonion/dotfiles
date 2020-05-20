#!/bin/bash -eu

if [[ "$(uname)" == "Darwin" ]]; then
  (cd brew && ./setup.sh)
fi

root="$(cd "$(dirname "$0")" && pwd -P)"

for f in "${root}"/*/setup.sh; do
  echo "${f}"
  (cd "$(dirname "${f}")" && ./setup.sh)
done
