#!/bin/sh
echo "Installing other packages ..."
read -p "Continue? [y/N]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 0

echo "Installing vundle (vim plugin manager) ..."
mkdir -p ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing vim plugins using vundle ..."
vim +PluginInstall +qall
