#!/usr/local/bin/zsh -e

find $HOME/Desktop -depth -name "* *" -execdir /usr/local/bin/rename 's/ /_/g' "{}" \; >/dev/null 2>&1
find $HOME/Downloads -depth -name "* *" -execdir /usr/local/bin/rename 's/ /_/g' "{}" \; >/dev/null 2>&1
