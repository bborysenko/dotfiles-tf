#!/usr/bin/env bash

set -eu

if [ ! -d ~/.iterm2 ]; then
  mkdir -p ~/.iterm2
fi

if [ "$(defaults read com.googlecode.iterm2.plist PrefsCustomFolder)" != "~/.iterm2" ]; then
  defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm"
fi

if [ "$(defaults read com.googlecode.iterm2.plist LoadPrefsFromCustomFolder)" -ne 1 ]; then
  defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
fi

# killall cfprefsd
