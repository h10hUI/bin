#!/bin/sh

## Get Brewfile
curl -L -o $HOME/.brewfile "https://drive.google.com/open?id=0B_yociWy4NahWldUR3FsM0RuSTg"

## dotfile links
ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/.zshenv $HOME/.zshenv
ln -sf $HOME/dotfiles/.inputrc $HOME/.inputrc
ln -sf $HOME/dotfiles/.lftprc $HOME/.lftprc
ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/.tigrc $HOME/.tigrc
ln -sf $HOME/.vim $HOME/.config/nvim

## neovim settings
mkdir -p $HOME/.config
ln $HOME/dotfiles/init.vim $HOME/.config/nvim/
ln $HOME/dotfiles/dein.toml $HOME/.config/nvim
ln $HOME/dotfiles/dein_lazy.toml $HOME/.config/nvim
