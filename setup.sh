#!/bin/bash

# .vimrc
if [ ! -f ~/.vimrc ]; then
    ln -s `dirname $0`/_vimrc ~/.vimrc
fi

# .bash_profile
if [ ! -f ~/.bash_profile ]; then
    ln -s `dirname $0`/_bash_profile ~/.bash_profile
fi

# git
git config --global color.ui auto
git config --global alias.co "checkout"
git config --global alias.st "status"
git config --global alias.br "branch"
git config --global alias.ci "commit"

