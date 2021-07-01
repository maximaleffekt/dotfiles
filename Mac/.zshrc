#             |     
# _  /   __|  __ \  
#   /  \__ \  | | | 
# ___| ____/ _| |_| 
# MasterMax13124' zsh configuration file

# Enables vi style keybinds
bindkey -v

# My own fuzzy finder function
function fcd() {
	cd $(fzf | rev | cut  -f2- -d "/" | rev)
}


# Sets history settings
# https://koenwoortman.com/zsh-command-history/
HISTFILE="~/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# Export variables
export EDITOR="nvim"
export PATH=$PATH:~/scripts

# All my aliases
alias zshc="nvim ~/.zshrc"
alias c="clear"
alias n="nvim"
alias nvimc="nvim ~/.config/nvim/init.vim"
alias v="nvim"
alias neo="neofetch"
alias up2="brew update && brew upgrade"
alias kittyc="nvim ~/.config/kitty/kitty.conf"
alias icat="kitty +kitten icat "
alias ":q"="exit"
alias "dfmd"="sudo nvim /usr/local/bin/dfm"
alias "rm"="rm -i"
alias py="python3"
alias ls="lsd"
alias lsa="lsd -A"
alias cp="cp -v"
alias du="du -h"
alias kitop="kitty @ set-background-opacity"

# Source various plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/max/.config/zsh-plugins/fzf/completion.zsh
source /Users/max/.config/zsh-plugins/fzf/keybinds.zsh

# Plugin settings
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload compinit && compinit # https://github.com/zsh-users/zsh-autosuggestions/issues/515

# Initialize starship prompt
eval "$(starship init zsh)"
