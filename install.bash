#!/bin/bash

SYMLINK_DIR=$HOME

# Bash

# Vim
mkdir -p .vim/files/backup
mkdir -p .vim/files/swap
mkdir -p .vim/files/undo

ln -s {$(pwd),$SYMLINK_DIR}/.vimrc
ln -s {$(pwd),$SYMLINK_DIR}/.vim

# tmux
ln -s {$(pwd),$SYMLINK_DIR}/.tmux.conf
