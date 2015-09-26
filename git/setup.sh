#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

symlink gitconfig ~/.gitconfig
symlink git-pushme ~/bin/git-pushme
