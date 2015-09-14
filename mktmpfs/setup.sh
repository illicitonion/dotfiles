#!/bin/bash -eu

self="$0"
if [[ self != /* ]]; then
  self="$(pwd)/${self}"
fi

case "$(uname)" in
  Linux)
    ln -s "$(dirname ${self})/mktmpfs-linux" ~/bin/mktmpfs
    ln -s "$(dirname ${self})/rmtmpfs-linux" ~/bin/rmtmpfs
    ;;
  Darwin)
    ln -s "$(dirname ${self})/mktmpfs-darwin" ~/bin/mktmpfs
    ln -s "$(dirname ${self})/rmtmpfs-darwin" ~/bin/rmtmpfs
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac
