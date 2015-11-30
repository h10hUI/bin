#!/bin/bash
source ~/.zshenv
brew file cask_upgrade -C && brew cask cleanup
