#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

symlink gitconfig ~/.gitconfig
symlink git-files-in-commit ~/bin/git-files-in-commit
symlink git-is-same-as-master ~/bin/git-is-same-as-master
symlink git-rebaseall ~/bin/git-rebaseall
symlink git-repick ~/bin/git-repick
symlink git-unmerge ~/bin/git-unmerge
symlink git-unmerged ~/bin/git-unmerged
symlink git-addremote ~/bin/git-addremote
symlink git-checkout-pr ~/bin/git-checkout-pr
