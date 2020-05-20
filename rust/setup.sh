#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

case "$(uname)" in
  Darwin)
    "${HOME}/.cargo/bin/rustup" target add x86_64-apple-ios
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac
