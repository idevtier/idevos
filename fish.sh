#!/usr/bin/env bash

# Install and set fish shell
sudo apt-get install -y fish 
chsh -s $(which fish)

# Install plugin manager
fish -c "curl -sL https://git.io/fisher | source"

# Install plugins
fish -c "fisher install jorgebucaran/fisher"
fish -c "fisher install jethrokuan/z"
fish -c "fisher install patrickf1/fzf.fish"
fish -c "fisher install edc/bass"
fish -c "fisher install fabioantunes/fish-nvm"
