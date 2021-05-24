#!/bin/bash

#copy neovim folder
cp -r ~/.config/nvim ~/dotfiles/Mac/

#copy neofetch config
cp -r ~/.config/neofetch/ ~/dotfiles/Mac/

#copy zshrc
cp ~/.zshrc ~/dotfiles/Mac/zshrc

#copy starship toml
cp ~/.config/starship.toml ~/dotfiles/Mac/starship.toml

#copy kitty folder
cp -r ~/.config/kitty ~/dotfiles/Mac/

cd ~/dotfiles/Mac

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
