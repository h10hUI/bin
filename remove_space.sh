#!/usr/local/bin/zsh
find $HOME/Desktop -depth -name "* *" -execdir /usr/local/bin/rename 's/ /_/g' "{}" \;
find $HOME/Downloads -depth -name "* *" -execdir /usr/local/bin/rename 's/ /_/g' "{}" \;
