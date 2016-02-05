#!/bin/sh

# Prepartion by GUI:
#   xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup Homebrew
brew doctor
brew update

# Install dependencies
brew install python
brew install ansible


##------------------------

DEV_ROOT=$HOME/.mac-provisioning

mkdir -p $DEV_ROOT && cd $DEV_ROOT
git clone git@github.com:gologo13/mac-provisioning.git
cd $DEV_ROOT/mac-provisioning
ansible-playbook -i hosts haribo.yml
