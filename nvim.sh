#!/usr/bin/env bash

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt update -y
sudo apt-get install -y neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if [ -d "$HOME/.config/nvim" ]; then
    mkdir -p "$HOME/old_files"
    mv "$HOME/.config/nvim" "$HOME/old_files"
fi
git clone "https://github.com/idevtier/nvim" "$HOME/.config/nvim"

