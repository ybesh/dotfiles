#!/bin/bash

SYMLINK_DIR=$HOME

function symlink_by_same_name()
{
    local src=$(pwd)/$1
    local dst=${SYMLINK_DIR}/$1
    rm $dst
    ln -s $src $dst
}

# Bash
symlink_by_same_name .inputrc

# Vim
rm -rf .vim/
mkdir -p .vim/files/backup
mkdir -p .vim/files/swap
mkdir -p .vim/files/undo
mkdir -p .vim/files/info
mkdir -p .vim/bundles

symlink_by_same_name .vimrc
symlink_by_same_name .vim

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
chmod +x installer.sh
sh ./installer.sh $SYMLINK_DIR/.vim/bundles
rm installer.sh

# tmux
symlink_by_same_name .tmux.conf
