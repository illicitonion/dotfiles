#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

symlink vimrc ~/.vimrc
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

go get golang.org/x/tools/cmd/goimports
