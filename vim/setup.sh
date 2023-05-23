#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

symlink vimrc ~/.vimrc
