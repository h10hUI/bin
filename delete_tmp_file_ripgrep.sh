#!/usr/local/bin/zsh -ex

/usr/local/bin/rg -g '.DS_*' --files --glob=!{Gdrive,Application,Library} /Users/c02w61dthv2h | xargs rm -rf
