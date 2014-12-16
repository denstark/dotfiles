#!/bin/bash

# dotfiles symlink script
pwd=`pwd`

# Vim

ln -sf ${pwd}/vimrc ~/.vimrc
ln -sf ${pwd}/.vim ~/.vim
