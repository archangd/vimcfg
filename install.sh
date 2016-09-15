#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.vim/vimrc ~/.vimrc

vim +PluginInstall +qall

mkdir /tmp/ycm_build
cd /tmp/ycm_build
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_core

cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/tern_runtime
npm install --production
