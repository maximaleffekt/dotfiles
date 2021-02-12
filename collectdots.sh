#!/bin/bash

cd

#copy vimrc
cp .vimrc vimrc
mv vimrc ~/dotfiles

#copy neofetch config
cp -r .config/neofetch/ ~/dotfiles/neofetch

#copy fish config folder
cp -r .config/fish ~/dotfiles/fish

cd dotfiles

git add vimrc
git add neofetch
git add fish
git status

git commit -m "Updated dotfiles"
