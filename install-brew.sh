#!/bin/zsh

# update brew and verify readiness
brew update && brew doctor


# use brew to install tools and applications

CLIS=(
  1password-cli
  ffmpeg
  git
  gh
  zsh
)

CASKS=(
  1password
  appcleaner
  brave-browser
  devonthink
  docker
  figma
  font-fira-code-nerd-font
  fujitsu-scansnap-home
  ghostty
  google-chrome
  handbrake
  jordanbaird-ice
  kap
  keyboardcleantool
  linear-linear
  logi-options+
  nordvpn
  notion
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
  visual-studio-code
  vlc
  whatsapp
  zoom
)

brew install ${CLIS[@]}
brew install --cask ${CASKS[@]}
