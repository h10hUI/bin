#!/bin/bash
source ~/.zshenv
brew update; brew upgrade -all
# brew update; brew upgrade -all; brew cleanup
brew file cask_upgrade -C
# brew file cask_upgrade -C && brew cask cleanup
