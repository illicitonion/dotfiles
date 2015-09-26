#!/bin/bash -eu

cd "$(dirname $0)"

if ! which realpath >/dev/null; then
  clang -Wall -Werror -o realpath realpath.c
  if [[ ! -e ~/bin ]]; then
    mkdir ~/bin
  fi
  ln -s "$(./realpath ./realpath)" ~/bin/realpath
fi
