#!/bin/bash

if [ ! -f ~/.vimrc ]; then
    ln -s ~/`dirname $0`/_vimrc ~/.vimrc
fi


