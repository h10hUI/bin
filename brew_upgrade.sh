#!/bin/bash
source ~/.zshenv
brew update; brew upgrade -all; brew cleanup
cask-upgrade; cask-cleanup
