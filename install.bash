#!/bin/bash

SYMLINK_DIR=$HOME

# Bash

# Vim
mkdir -p .vim/files/backup
mkdir -p .vim/files/swap
mkdir -p .vim/files/undo
mkdir -p .vim/files/info
mkdir -p .vim/bundles

ln -s {$(pwd),$SYMLINK_DIR}/.vimrc
ln -s {$(pwd),$SYMLINK_DIR}/.vim

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
chmod +x installer.sh
sh ./installer.sh $SYMLINK_DIR/.vim/bundles
rm installer.sh

# tmux
ln -s {$(pwd),$SYMLINK_DIR}/.tmux.conf
