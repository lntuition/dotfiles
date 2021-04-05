#!/bin/sh

# Package manager setting
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git

# iTerm2 setting
brew install --cask iterm2
# Change default terminal to iterm

# Oh-my-zsh setting
brew install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Add plugins ~/.zshrc git zsh-syntax-highlighting zsh-autosuggestions

# Java setting
brew tap AdoptOpenJDK/openjdk
brew install --cask 11

# Rust setting
curl -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Git setting
git config --global user.email 'ekffu200098@gmail.com'
git config --global user.name 'Sang-Heon Jeon'

# Vim setting
cp .vimrc ~/.vimrc
