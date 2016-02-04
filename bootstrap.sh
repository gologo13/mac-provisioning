#!/bin/sh

# Xcode
sudo xcodebuild -license

# Install Homebrew
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup Homebrew
brew doctor
brew update

# Install dependencies
brew install python
brew install ansible


##------------------------

cd $HOME
git clone git@github.com:gologo13/mac-provisioning.git
mkdir $HOME/.macbook-provisioning && cd $0
ansible-playbook -i hosts web-development.yml
