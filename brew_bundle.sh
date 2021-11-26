#!/opt/homebrew/bin/zsh -ex

rm -rf $HOME/.Brewfile \
  && /opt/homebrew/bin/brew bundle dump --global -f \
  && cp ~/.Brewfile ~/dotfiles/ \
  || :
