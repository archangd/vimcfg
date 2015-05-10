#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir ~/.vim/colors
wget https://raw.githubusercontent.com/Lokaltog/vim-distinguished/develop/colors/distinguished.vim -O ~/.vim/colors/distinguished.vim
ln -s ~/.vim/vimrc ~/.vimrc

vim +PluginInstall +qall

mkdir /tmp/ycm_build
cd /tmp/ycm_build
cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DEXTERNAL_LIBCLANG_PATH=/usr/lib64/libclang.so.3.6 -DPATH_TO_LLVM_ROOT=/tmp/ycm_build/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_support_libs

su -c "npm install -g jshint"

#cd ~/.vim/bundle/tern_for_vim/
#npm install
