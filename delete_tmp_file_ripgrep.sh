#!/usr/local/bin/zsh -ex

/usr/local/bin/rg -g '.DS_*' --files --glob='!{Gdrive,Application}' | xargs rm -rf
