#!/usr/local/bin/zsh -ex

/usr/local/bin/rg -g '.DS_*' --files --glob=!{Gdrive,Application,Library} /Users/hi0711 | xargs rm -rf
