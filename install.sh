#!/usr/bin/env sh
rm -rf $HOME/.vim $HOME/.vimrc $HOME/.inputrc $HOME/.bashrc

ln -s `pwd`/vim $HOME/.vim
ln -s `pwd`/vim/vimrc $HOME/.vimrc
ln -s `pwd`/inputrc $HOME/.inputrc
ln -s `pwd`/bashrc $HOME/.bashrc
