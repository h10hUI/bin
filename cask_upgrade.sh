#!/bin/sh

for app in $(brew cask list); do # For every app in the Caskroom, do this
    appToCheck=$(brew cask list "${app}" 2>&1 >/dev/null | grep "${app} is not installed") # If the app is not marked as not installed `brew cask list "app"`, this variable will be "Warning: "app" is not installed",

    if [[ ! -z "${appToCheck}" ]]; then # If the variable is empty, then
        brew cask install --force "${app}" # Force an install of the app
    fi
done
