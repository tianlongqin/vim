#!/bin/bash 

mv $HOME/.vimrc $HOME/.vimrc.bak  > /dev/null 2>&1
mv $HOME/.vim $HOME/.vim.bak > /dev/null 2>&1
cp -rf vimrc $HOME/.vimrc 
cp -rf vim $HOME/.vim 
