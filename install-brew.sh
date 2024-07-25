#!/bin/zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew binary to zsh config file
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$(whoami)/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# update brew and verify readiness
brew update && brew doctor


# use brew to install tools and applications

CLIS=(
  git
  tree
  zsh
)

CASKS=(
  1password
  ankerwork
  appcleaner
  arc
  betterdisplay
  brave-browser
  devonthink
  discord
  docker
  expressvpn
  figma
  firefox
  font-fira-code-nerd-font
  fujitsu-scansnap-home
  google-chrome
  handbrake
  iterm2
  keyboardcleantool
  linear-linear
  logi-options-plus
  microsoft-auto-update
  microsoft-edge
  microsoft-teams
  notion
  numi
  obsidian
  ollama
  postman
  raycast
  spotify
  transmission
  visual-studio-code
  vlc
  warp
  whatsapp
  zoom
)

brew install ${CLIS[@]}
brew install --cask ${CASKS[@]}