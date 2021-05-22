#!/bin/bash

#copy neovim folder
cp -r ~/.config/nvim ~/dotfiles/Arch/

#copy neofetch config
cp -r ~/.config/neofetch/ ~/dotfiles/Arch/

#copy zshrc
cp ~/.zshrc ~/dotfiles/Arch/zshrc

#copy starship toml
cp ~/.config/starship.toml ~/dotfiles/Arch/

#copy kitty folder
cp -r ~/.config/kitty ~/dotfiles/Arch/

#copy dwm files
cp ~/repos/dwm/config.h ~/dotfiles/Arch/dwm/
cp ~/.xinitrc ~/dotfiles/Arch/dwm/
cp -r ~/dwmscripts ~/dotfiles/Arch/dwm/

cd ~/dotfiles

git add Arch/
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
