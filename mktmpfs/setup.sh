#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

case "$(uname)" in
  Linux)
    symlink mktmpfs-linux ~/bin/mktmpfs
    symlink rmtmpfs-linux ~/bin/rmtmpfs
    ;;
  Darwin)
    symlink mktmpfs-darwin ~/bin/mktmpfs
    symlink rmtmpfs-darwin ~/bin/rmtmpfs
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac
