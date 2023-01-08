#!/usr/bin/env bash

TMUX_CONFIG_FOLDER_PATH="$HOME/.config/tmux"
TMUX_CONFIG_MAIN_FILE="$HOME/.tmux.conf"

if [ -d $TMUX_CONFIG_FOLDER_PATH ]; then
    # mkdir -p ~/old_files
    # mv ~/.config/tmux ~/old_files
    echo "making dir"
fi

# Create link to tmux
if [ -e $TMUX_CONFIG_MAIN_FILE ]; then
    # mv $TMUX_CONFIG_MAIN_FILE $ARCHIVE_PATH
    echo "Moving to archive"
fi
