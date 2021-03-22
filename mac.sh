#!/bin/sh

# Package manager setting
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh
which zsh
chsh -s $(which zsh)

# Oh-my-zsh setting
brew install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Add git zsh-syntax-highlighting zsh-autosuggestions plugin

# Rust setting
curl -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Git setting
brew install git
git config --global user.email 'ekffu200098@gmail.com'
git config --global user.name 'Sang-Heon Jeon'

# Vim setting
cp .vimrc ~/.vimrc
