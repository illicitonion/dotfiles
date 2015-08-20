#!/bin/bash -eu

self="$0"
if [[ self != /* ]]; then
  self="$(pwd)/${self}"
fi

if [[ "$(uname)" == "Linux" ]]; then
  ln -s "$(dirname ${self})/mktmpfs-linux" ~/bin/mktmpfs
  ln -s "$(dirname ${self})/rmtmpfs-linux" ~/bin/rmtmpfs
else
  echo >&2 "Unrecognised uname"
  exit 1
fi
