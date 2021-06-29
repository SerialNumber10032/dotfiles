#!/bin/bash
# Script for download vim-plug and load my config to .vimrc
# Make a backup for .vimrc before you run the script
VIMRC=~/.vimrc
VIMPLUG=~/.vim
if [ -f "$VIMRC" ];then
    echo "vimrc exists! creating backup: .vimrc_backup"
    cp .vimrc .vimrc_backup
fi

if [ ! -d "$VIMPLUG" ]
then
    echo "$VIMPLUG directory not found."
    while true; do
        read -p "Install vim-plug and config? (y/n) " yn
    case $yn in
        [Yy]* ) curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
                curl https://raw.githubusercontent.com/zerrtul/dotfiles/master/.vimrc > .vimrc;
            break;;
        [Nn]* ) echo "see you next time";exit;;
        * ) echo "Please answer y or n.";;
    esac
done
fi
