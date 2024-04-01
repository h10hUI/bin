#!/opt/homebrew/bin/zsh -ex

/opt/homebrew/bin/rg -g '.DS_*' --files --glob=\!{Google\ Drive,Applications,Library} ${HOME} | xargs rm -rf
