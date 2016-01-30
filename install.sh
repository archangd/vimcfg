#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -s ~/.vim/vimrc ~/.vimrc

vim +PluginInstall +qall

mkdir /tmp/ycm_build
cd /tmp/ycm_build
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs

#cd ~/.vim/bundle/tern_for_vim/
#npm install
