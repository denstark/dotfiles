#!/bin/bash

# dotfiles symlink script
dotfiles_dir=`pwd`


# bash

ln -sfn ${dotfiles_dir}/bash_profile ~/.bash_profile
ln -sfn ${dotfiles_dir}/bashrc ~/.bashrc
ln -sfn ${dotfiles_dir}/aliases ~/.aliases

# Vim

ln -sfn ${dotfiles_dir}/vimrc ~/.vimrc
ln -sfn ${dotfiles_dir}/.vim ~/.vim

# Initialize git submodules and download them
cd ${dotfiles_dir}
git submodule init
git submodule update
