#!/bin/bash -eu
sudo apt-get install -y abcde eyed3 lame

self="$0"
if [[ self != /* ]]; then
  self="$(pwd)/${self}"
fi

ln -s "$(dirname ${self})/ripcd" ~/bin/ripcd
ln -s "$(dirname ${self})/abcde.conf" ~/.abcde.conf
