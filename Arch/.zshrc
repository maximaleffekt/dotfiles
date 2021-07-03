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

# Aliases
alias zshc="$EDITOR ~/.zshrc"
alias c="clear"
alias n="nvim"
alias nvimc="nvim ~/.config/nvim/init.vim"
alias v="nvim"
alias neo="neofetch"
alias up2="brew update && brew upgrade"
alias kittyc="nvim ~/.config/kitty/kitty.conf"
alias icat="kitty +kitten icat "
alias slockspend="systemctl suspend && slock"
alias rm="rm -i"
alias cp="cp -v"
alias mv="mv -v"
alias ls=lsd
alias lsa="lsd -A"
alias lsl="lsd -l"
alias sus="systemctl suspend"
alias dwmc="$EDITOR ~/repos/dwm/config.h"
alias dwmi="cd ~/repos/dwm && make && sudo make install && cd"
alias py="python3 "

# Plug-ins
source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh #for manual git repo
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload compinit && compinit # https://github.com/zsh-users/zsh-autosuggestions/issues/515
source ~/.config/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starship prompt
eval "$(starship init zsh)"
