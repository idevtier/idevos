#!/usr/bin/env bash

TMUX_REPOSITORY="https://github.com/idevtier/tmux"
TMUX_CONFIG_FOLDER_PATH="$HOME/.config/tmux"
TMUX_CONFIG_MAIN_FILE="$HOME/.tmux.conf"
ARCHIVE_PATH="$HOME/old_files"

# Clone dots
if [ -d $TMUX_CONFIG_FOLDER_PATH ]; then
    mkdir -p "$HOME/old_files"
    mv "$HOME/.config/tmux" "$HOME/old_files"
fi
git clone $TMUX_REPOSITORY "$HOME/.config/tmux"

# Install tmux
sudo apt-get install tmux urlview fzf lazygit
pip install libtmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Create link to tmux
if [ -e $TMUX_CONFIG_MAIN_FILE ]; then
    mkdir -p ~/old_files
    mv $TMUX_CONFIG_MAIN_FILE $ARCHIVE_PATH
fi
ln -s "$TMUX_CONFIG_FOLDER_PATH/.tmux.conf" $TMUX_CONFIG_MAIN_FILE 

# Source new config
. $TMUX_CONFIG_MAIN_FILE

# Install plugins
. "$HOME/.tmux/plugins/tpm/scripts/install_plugins.sh"

