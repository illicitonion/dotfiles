#!/bin/bash -eu

. $(dirname $0)/../common.sh

platform="$(uname | tr A-Z a-z)"

(
  mkdir -p ~/opt
  cd ~/opt
  if [[ -e go1.7.1 ]]; then
    exit 0
  fi

  rm -rf go
  curl -O "https://storage.googleapis.com/golang/go1.7.1.${platform}-amd64.tar.gz"
  tar xzf "go1.7.1.${platform}-amd64.tar.gz"
  mv go go1.7.1
  ln -s go1.7.1 go
)

symlink gotest ~/bin/gotest
