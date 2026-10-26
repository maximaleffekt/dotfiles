#             |     
# _  /   __|  __ \  
#   /  \__ \  | | | 
# ___| ____/ _| |_| 
# Maximaleffekt's zsh configuration file

# Functions

# uses fzf to quickly find a (sub)folder from anywhere
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

# Doesn't count empty lines
# For reference: https://kevcaz.insileco.io/notes/linux/countlines/
function wcn(){
	cat $1 | sed '/^\s*#/d;/^\s*$/d' | wc -l
}

export EDITOR="nvim"
export PATH=$PATH:~/scripts
export PATH=$PATH:/Users/max/.local/bin
export PATH=$PATH:/Users/max/.cargo/bin
# Sets history settings
# https://koenwoortman.com/zsh-command-history/
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# Aliases
alias resource="source ~/.zshrc"
alias zshc="$EDITOR ~/.zshrc"
alias n="nvim"
alias nvimc="nvim ~/.config/nvim/init.vim"
alias v="nvim"
alias "rm"="rm -i"
alias ls="lsd"
alias lsa="lsd -A"
alias lsl="lsd -l"
alias tree="lsd --tree"
alias cp="cp -v"
alias mv="mv -v"
alias du="du -h"
alias df="df -h"
alias up2="brew update && brew upgrade"
alias py="/opt/homebrew/bin/python3"
alias python3="/opt/homebrew/bin/python3"
alias pip="/opt/homebrew/bin/pip3"
alias pip3="/opt/homebrew/bin/pip3"
alias gdl="gallery-dl"
alias gdlp="gallery-dl $(pbpaste)"

# Plug-ins
source /Users/max/.config/zsh-plugins/fzf/completion.zsh
source /Users/max/.config/zsh-plugins/fzf/keybinds.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_STRATEGY=(history completion )
autoload compinit && compinit # https://github.com/zsh-users/zsh-autosuggestions/issues/515

# Initialize starship prompt
eval "$(starship init zsh)"

export PATH=$PATH:/Users/max/.local/bin
