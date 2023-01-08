#!/usr/bin/env bash

# Install and set fish shell
sudo apt-get install -y fish 
chsh $(which fish)

# Install plugin manager
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Install plugins
fisher install jorgebucaran/fisher
fisher install jethrokuan/z
fisher install patrickf1/fzf.fish
fisher install edc/bass
fisher install fabioantunes/fish-nvm
