#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

symlink gitconfig ~/.gitconfig
symlink git-pushme ~/bin/git-pushme
symlink git-rebaseall ~/bin/git-rebaseall
symlink git-unmerged ~/bin/git-unmerged
