#!/bin/sh

# Change default configuration

# Stop .DS_* files
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool YES

# Install default software

# Download and install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install basic utils
brew install bash util-linux moreutils trash stow
brew install --cask macvim firefox

# Install config

stow unix darwin
