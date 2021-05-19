#!/bin/bash

#cd

#copy vimrc
#cp .vimrc vimrc
#mv vimrc ~/dotfiles

#copy neovim
cp -r ~/.config/nvim ~/dotfiles/nvim

#copy neofetch config
cp -r ~/.config/neofetch/ ~/dotfiles/neofetch

#copy fish config folder
cp -r  ~/.config/fish ~/dotfiles/fish

#copy zshrc
cp ~/.zshrc ~/dotfiles/zshrc

#copy starship toml
cp ~/.config/starship.toml ~/dotfiles/starship.toml

#copy kitty config folder
cp -r ~/.config/kitty ~/dotfiles/kitty

cd ~/dotfiles

#git add vimrc
#git add nvim
#git add neofetch
#git add fish
#git add collectdots.sh
git add .
git status

echo "Specify a commit message or leave empty for default: "
read message

if [ -z "$message" ]
then
	git commit -m "Updated dotfiles"
else
	git commit -m "$message"
fi


echo "Committed dotfiles to local git repo, don't forget to push!"
