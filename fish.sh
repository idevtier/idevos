#!/usr/bin/env bash

# Install and set fish shell
sudo apt-get install -y fish 
chsh -s $(which fish)

# Install plugin manager
fish -c "curl -sL https://git.io/fisher | source"

# Install plugins
fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install patrickf1/fzf.fish
fisher install edc/bass
fisher install fabioantunes/fish-nvm
