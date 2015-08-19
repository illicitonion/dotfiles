#!/bin/bash -eu

self="$0"
if [[ self != /* ]]; then
  self="$(pwd)/${self}"
fi

ln -s "$(dirname ${self})/gitconfig" ~/.gitconfig
