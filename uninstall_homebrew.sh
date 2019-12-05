#!/bin/sh -e

echo "cd `brew --prefix`"
cd `brew --prefix`

echo "rm -rf Cellar"
rm -rf Cellar

echo "brew prune"
brew prune

echo "rm -rf Library .git .gitignore bin/brew README.md share/man/man1/brew"
rm -rf Library .git .gitignore bin/brew README.md share/man/man1/brew

echo "rm -rf ~/Library/Caches/Homebrew"
rm -rf ~/Library/Caches/Homebrew

echo "rm -rf ~/Library/Logs/Homebrew"
rm -rf ~/Library/Logs/Homebrew

echo "rm -rf /Library/Caches/Homebrew"
rm -rf /Library/Caches/Homebrew

echo "rm -rf /usr/local/Cellar /usr/local/.git"
rm -rf /usr/local/Cellar /usr/local/.git
