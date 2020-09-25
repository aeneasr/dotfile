#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git golang node kubernetes-cli mysql-client git-town \
  skaffold helm nancy circleci cockroach composer gettext terraform \
  gh gnupg gnutls wget sqlite postgresql golangci-lint gometalinter goreleaser hashcat heroku imagemagick
brew cask install gpg-suite jdownloader minikube ngrok pgadmin4 \
  veracrypt virtualbox wireshark db-browser-for-sqlite google-cloud-sdk

# MySQL
echo 'export PATH="/usr/local/opt/mysql-client/bin:$PATH"' > ~/.zshenv
echo 'export PATH="/usr/local/opt/mysql-client/bin:$PATH"' > ~/.bash_profile

echo '[mysqldump]' > .my.cnf 
echo 'column-statistics=0' > .my.cnf 

source ~/.zshenv

# Git
git config --global user.name "aeneasr"
git config --global user.name "3372410+aeneasr@users.noreply.github.com"

# Global gitignore
git config --global core.excludesfile ~/.gitignore
git config --global core.excludesfile ~/.gitignore
echo ".idea/" ~/.gitignore
echo ".DS_Store" ~/.gitignore

# Go
mkdir -p ~/workspace/go

# JS
mkdir -p ~/workspace/js
