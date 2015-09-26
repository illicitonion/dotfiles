#!/bin/bash

before=$(pwd)

cd "$(dirname $0)"
00-realpath/setup.sh

cd "${before}"
root="$(realpath "$(dirname "$0")")"

for f in "${root}"/*/setup.sh; do
  cd "$(dirname ${f})"
  ./setup.sh
done
