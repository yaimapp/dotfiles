#!/bin/bash

for f in .??*
do
    [[ $f == ".git" ]] && continue
    [[ $f == ".DS_Store" ]] && continue
    [[ $f == ".gitignore" ]] && continue
    [[ -d $f ]] && continue

    [ ! -e $HOME/$f ]  && ln -s $HOME/.dotfiles/$f $HOME/$f
done

dir=~/.vim
[ ! -e $dir ] && mkdir -p $dir
cd .vim
files="*"
for f in ${files} 
do
    [[ $f == ".git" ]] && continue
    [[ $f == ".DS_Store" ]] && continue
    [[ $f == ".gitignore" ]] && continue
    echo $f
    [ ! -e $HOME/.vim/$f ] && ln -s $HOME/.dotfiles/.vim/$f $HOME/.vim/$f
done
