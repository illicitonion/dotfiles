#!/bin/bash -eu

case "$(uname)" in
  Linux)
    sudo apt-get install -y abcde eyed3 lame
    ;;
  Darwin)
    brew install abcde
    brew install eyed3
    brew install lame
    ;;
  *)
  echo >&2 "Skipping ripcd on unknown platform"
  exit 0
esac

. $(dirname $0)/../common.sh

symlink ripcd ~/bin/ripcd
symlink abcde.conf ~/.abcde.conf
