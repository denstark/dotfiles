#!/bin/bash

# dotfiles symlink script
dotfiles_dir=`pwd`

# Vim

ln -sf ${dotfiles_dir}/vimrc ~/.vimrc
ln -sf ${dotfiles_dir}/.vim ~/.vim

# Initialize git submodules and download them
cd ${dotfiles_dir}
git submodule init
git submodule update
