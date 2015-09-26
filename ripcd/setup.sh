#!/bin/bash -eu

if [[ "$(uname)" != "Linux" ]]; then
  echo >&2 "Skipping ripcd on non-linux platform"
  exit 1
fi

sudo apt-get install -y abcde eyed3 lame

. $(dirname $0)/../common.sh

symlink ripcd ~/bin/ripcd
symlink abcde.conf ~/.abcde.conf
