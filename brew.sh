#!/usr/bin/env bash
set -x

brew update
brew upgrade
brew tap homebrew/cask
brew tap homebrew/cask-fonts

PACKAGES=(
  git
  curl
  docker-compose
  htop
  mysql-client
  nvm
  zsh-syntax-highlighting
)

APPLICATIONS=(
  iterm2
  slack
  telegram
  alfred
  1password
  gpg-suite
  paw
  daisydisk
  charles
  docker
  gas-mask
  istat-menus
  keybase
  spotify
  jetbrains-toolbox
  intellij-idea
  proxyman
  tableplus
  tunnelblick
  whatsapp
  visual-studio-code
)


for PACKAGE in "${PACKAGES[@]}";
do
brew install "$PACKAGE"
done

for APPLICATION in "${APPLICATIONS[@]}";
do
brew install "$APPLICATION"
done

brew cleanup