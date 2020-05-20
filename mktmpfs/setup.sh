#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

case "$(uname)" in
  Linux)
    symlink mktmpfs-linux ~/bin/mktmpfs
    symlink rmtmpfs-linux ~/bin/rmtmpfs
    ;;
  Darwin)
    grep "^mnt" /etc/synthetic.conf >/dev/null 2>/dev/null || echo -e "mnt\t/Volumes" | sudo tee -a /etc/synthetic.conf
    symlink mktmpfs-darwin ~/bin/mktmpfs
    symlink rmtmpfs-darwin ~/bin/rmtmpfs
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac
