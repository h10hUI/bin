#!/opt/homebrew/bin/zsh -ex

/usr/bin/find $HOME/Desktop -depth -name "* *" -execdir /opt/homebrew/bin/rename 's/ /_/g' "{}" \; > /dev/null 2>&1
/usr/bin/find $HOME/Downloads -depth -name "* *" -execdir /opt/homebrew/bin/rename 's/ /_/g' "{}" \; > /dev/null 2>&1
