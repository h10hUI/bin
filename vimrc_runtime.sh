#!bin/sh
git clone --depth=1 git://github.com/amix/vimrc.git $HOME/.vim_runtime
sh $HOME/.vim_runtime/install_basic_vimrc.sh
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/undo
