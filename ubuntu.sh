#!/bin/bash

# Package manager setting
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install curl git 

# Rust setting
curl -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Vscode setting
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install code

# Git setting
git config --global user.email 'ekffu200098@gmail.com'
git config --global user.name 'Sang-Heon Jeon'
git config --global core.editor 'code --wait'

# Vim setting
cp .vimrc ~/.vimrc
