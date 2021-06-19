source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh #for manual git repo
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
autoload compinit && compinit # https://github.com/zsh-users/zsh-autosuggestions/issues/515
source ~/.config/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable vi style keybinds
bindkey -v

# export LANG=en_US.UTF-8
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# export ARCHFLAGS="-arch x86_64"

export EDITOR="nvim"

alias zshc="nvim ~/.zshrc"
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

#initialize starship prompt
eval "$(starship init zsh)"
