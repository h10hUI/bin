#!/bin/bash
source ~/.zshenv
brew update; brew upgrade
# brew update; brew upgrade -all; brew cleanup
brew cask upgrade
# brew file cask_upgrade -C && brew cask cleanup
