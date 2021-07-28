#!/opt/homebrew/bin/zsh -ex

rm -rf $HOME/.Brewfile \
  && brew bundle dump --global -f \
  && cp ~/.Brewfile ~/dotfiles/ \
  || :
