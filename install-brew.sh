#!/bin/zsh

# update brew and verify readiness
brew update && brew doctor


# use brew to install tools and applications

CLIS=(
  1password-cli
  ffmpeg
  git
  tree
  zsh
)

CASKS=(
  1password
  appcleaner
  arq
  brave-browser
  devonthink
  docker
  expressvpn
  figma
  font-fira-code-nerd-font
  fujitsu-scansnap-home
  ghostty
  gifox
  google-chrome
  handbrake
  jordanbaird-ice
  kap
  keyboardcleantool
  linear-linear
  logi-options+
  notion
  notion-calendar
  notion-mail
  numi
  obsidian
  ollama
  onyx
  parallels
  plex
  postman
  raycast
  slack
  transmission
  visual-studio-code@insiders
  vlc
  whatsapp
  zoom
)

brew install ${CLIS[@]}
brew install --cask ${CASKS[@]}
