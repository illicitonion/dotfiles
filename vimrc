set nocompatible
syntax on

filetype off " Required by Vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fatih/vim-go'
let g:go_fmt_command = "goimports"

call vundle#end()
filetype plugin indent on " Required by Vundle

digraph !? 8253
digraph ?! 8253

set statusline=%f%=char:%c/%{strlen(getline('.'))}\ \ \ \ line:%l/%L\ \ \ \ \ %P
set laststatus=2
set number

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

set hidden " Don't force save on buffer switch
