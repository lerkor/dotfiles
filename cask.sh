#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `cask.sh` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Install native apps

# daily
brew cask install alfred                --appdir=/Applications/Utilities    2> /dev/null
brew cask install divvy                 --appdir=/Applications/Utilities    2> /dev/null

# development
brew cask install iterm2                                                    2> /dev/null
brew cask install sublime-text                                              2> /dev/null
brew cask install imagealpha                                                2> /dev/null
brew cask install imageoptim                                                2> /dev/null
brew cask install macvim                                                    2> /dev/null

# fun
brew cask install miro-video-converter  --appdir=/Applications/Utilities    2> /dev/null

# browsers
brew cask install google-chrome                                             2> /dev/null
brew cask install google-chrome-canary  --appdir=/Applications/Browsers     2> /dev/null
brew cask install firefox-nightly       --appdir=/Applications/Browsers     2> /dev/null
brew cask install webkit-nightly        --appdir=/Applications/Browsers     2> /dev/null
brew cask install torbrowser            --appdir=/Applications/Browsers     2> /dev/null

# less often
brew cask install screenflow            --appdir=/Applications/Utilities    2> /dev/null
brew cask install vlc                   --appdir=/Applications/Utilities    2> /dev/null
brew cask install appcleaner            --appdir=/Applications/Utilities    2> /dev/null
brew cask install onxy                  --appdir=/Applications/Utilities    2> /dev/null

brew cask cleanup
