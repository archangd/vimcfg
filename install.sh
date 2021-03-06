#!/bin/bash
pip install --user notedown

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.vim/vimrc ~/.vimrc

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all --system-libclang --system-boost
