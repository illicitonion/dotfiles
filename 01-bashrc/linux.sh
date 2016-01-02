#!/bin/bash -eu

. "$(dirname "${BASH_SOURCE[0]}")/common.sh"

export GOROOT="${HOME}/opt/go"
export GOPATH="${HOME}"
export PATH="${PATH}:${GOROOT}/bin"
