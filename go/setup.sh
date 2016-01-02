#!/bin/bash -eu

. $(dirname $0)/../common.sh

case "$(uname)" in
  Linux)
    (
      mkdir -p ~/opt
      cd ~/opt
      if [[ -e go1.5.2 ]]; then
	exit 0
      fi

      rm -rf go
      wget -O go1.5.2.linux-amd64.tar.gz https://storage.googleapis.com/golang/go1.5.2.linux-amd64.tar.gz
      tar xzf go1.5.2.linux-amd64.tar.gz
      mv go go1.5.2
      ln -s go1.5.2 go
    )
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac


symlink gotest ~/bin/gotest
