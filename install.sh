#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
wget https://raw.githubusercontent.com/Lokaltog/vim-distinguished/develop/colors/distinguished.vim -O ~/.vim/colors/distinguished.vim
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall
