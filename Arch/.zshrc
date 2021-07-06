#             |     
# _  /   __|  __ \  
#   /  \__ \  | | | 
# ___| ____/ _| |_| 
# MasterMax13124' zsh configuration file

# Functions
function fcd() {
	a=$(pwd)
	cd
	b="$(fzf | rev | cut  -f2- -d "/" | rev)"
	if [ -n "$b" ]; then
		cd $b
	else
		cd $a
	fi
}

function cl(){
	cd $1
	lsd -A
}

# Miscellaneous
bindkey -v
export EDITOR="nvim"
export PATH=$PATH:~/scripts

# Sets history settings
# https://koenwoortman.com/zsh-command-history/
HISTFILE="~/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# General aliases
alias zshc="$EDITOR ~/.zshrc"
alias c="clear"
alias n="nvim"
alias nvimc="nvim ~/.config/nvim/init.vim"
alias v="nvim"
alias neo="neofetch"
alias kittyc="nvim ~/.config/kitty/kitty.conf"
alias icat="kitty +kitten icat "
alias ":q"="exit"
alias "rm"="rm -i"
alias py="python3"
alias ls="lsd"
alias lsa="lsd -A"
alias lsl="lsd -l"
alias cp="cp -v"
alias du="du -h"
alias kitop="kitty @ set-background-opacity"

# Mac aliases
alias up2="brew update && brew upgrade"

# Linux aliases
#alias slockspend="systemctl suspend && slock"
#alias sus="systemctl suspend"
#alias dwmc="$EDITOR ~/repos/dwm/config.h"
#alias dwmi="cd ~/repos/dwm && make && sudo make install && cd"

# General plug-ins
source /Users/max/.config/zsh-plugins/fzf/completion.zsh
source /Users/max/.config/zsh-plugins/fzf/keybinds.zsh

# Mac Plug-ins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Linux Plug-ins
#source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.config/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Plugin settings
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload compinit && compinit # https://github.com/zsh-users/zsh-autosuggestions/issues/515

# Initialize starship prompt
eval "$(starship init zsh)"
