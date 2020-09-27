#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install git golang node kubernetes-cli mysql-client git-town \
  skaffold helm nancy circleci cockroach composer gettext terraform \
  gh gnupg gnutls wget sqlite postgresql golangci-lint gometalinter goreleaser hashcat heroku imagemagick minikube

brew cask install gpg-suite jdownloader ngrok pgadmin4 \
  veracrypt virtualbox wireshark db-browser-for-sqlite google-cloud-sdk

# MySQL
echo 'export PATH="/usr/local/opt/mysql-client/bin:$PATH"' >> ~/.zshenv
echo 'export PATH="/usr/local/opt/mysql-client/bin:$PATH"' >> ~/.bash_profile

## Make mysqldump compatible with versions prior to 8.0
echo '[mysqldump]' >> ~/.my.cnf 
echo 'column-statistics=0' >> ~/.my.cnf 

source ~/.zshenv

# Global gitignore
echo ".idea/" >> ~/.gitignore
echo ".DS_Store" >> ~/.gitignore

# Go
mkdir -p ~/workspace/go
echo 'export GOPATH="$HOME/workspace/go"' >> ~/.zshenv
echo 'export GOPATH="$HOME/workspace/go"' >> ~/.bash_profile
echo 'export PATH="$HOME/workspace/go/bin:$PATH"' >> ~/.zshenv
echo 'export PATH="$HOME/workspace/go/bin:$PATH"' >> ~/.bash_profile

# JS
mkdir -p ~/workspace/js
