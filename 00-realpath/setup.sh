#!/bin/bash -eu

cd "$(dirname $0)"

if ! which realpath >/dev/null; then
  if [[ "$(uname)" == "Linux" ]]; then
    sudo apt-get install -y realpath
  else
    clang -Wall -Werror -o realpath realpath.c
    if [[ ! -e ~/bin ]]; then
      mkdir ~/bin
    fi
    ln -s "$(./realpath ./realpath)" ~/bin/realpath
  fi
fi
