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
  arc
  arq
  brave-browser
  devonthink
  discord
  docker
  figma
  firefox
  font-fira-code-nerd-font
  fujitsu-scansnap-home
  google-chrome
  handbrake
  iterm2
  kap
  keyboardcleantool
  linear-linear
  logi-options+
  microsoft-auto-update
  microsoft-edge
  microsoft-teams
  notion
  numi
  obsidian
  ollama
  onyx
  parallels
  postman
  raycast
  slack
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